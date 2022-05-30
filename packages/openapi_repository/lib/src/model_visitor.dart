// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:source_gen/source_gen.dart';

class ClassPropertiesVisitor extends SimpleElementVisitor {
  final listMethods = <ClassElement, List<RepositoryModel>>{};

  static const listChecker = TypeChecker.any([
    TypeChecker.fromRuntime(List),
    TypeChecker.fromRuntime(BuiltList),
  ]);

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {
    if (element.isStatic || element.isPrivate) return;
    final returnElement = element.returnType.element;
    if (returnElement is! ClassElement) return;

    for (var method in returnElement.methods) {
      final returnType = method.returnType;

      if (!returnType.isDartAsyncFuture) continue;
      final innerModel = _getInnerReturnType(returnType, false);
      bool isList = innerModel != null;
      if (!isList) continue;
      final model = RepositoryModel(
        classElement: returnElement,
        methodElement: method,
        returnType: innerModel.type,
        isInline: innerModel.isInline,
      );

      if (listMethods.containsKey(returnElement)) {
        listMethods[returnElement]!.add(model);
      } else {
        listMethods[returnElement] = [model];
      }
    }
  }

  _ReturnModel? _getInnerReturnType(DartType type, bool isInline) {
    final innerMostType = _getInnerMostType(type);
    if (listChecker.isExactlyType(type) && innerMostType != null) {
      return _ReturnModel(innerMostType, isInline);
    }

    if (type is! ParameterizedType) return null;

    List<DartType> args = type.typeArguments;
    if (args.isEmpty) {
      final innerElement = innerMostType?.element;
      if (innerMostType == null || innerElement == null) return null;

      final inlineVisitor = InlineClassVisitor();
      innerElement.visitChildren(inlineVisitor);
      if (inlineVisitor.fields.isEmpty) return null;
      final results = inlineVisitor.fields;
      return _getInnerReturnType(results.first.type, true);
    }
    if (args.first.isVoid) return null;

    return _getInnerReturnType(args.first, false);
  }
}

class InlineClassVisitor extends SimpleElementVisitor {
  final fields = <FieldElement>[];
  final parameters = [];

  @override
  void visitFieldElement(FieldElement element) {
    parameters.add(element);
    if (element.displayName == 'results') fields.add(element);
  }
}

class RepositoryModel {
  final DartType returnType;
  final ClassElement classElement;
  final MethodElement methodElement;
  final bool isInline;

  const RepositoryModel({
    required this.classElement,
    required this.returnType,
    required this.methodElement,
    this.isInline = true,
  });
}

DartType? _getInnerMostType(DartType type) {
  if (type is ParameterizedType && type.typeArguments.isNotEmpty) {
    final typeArgs = type.typeArguments;
    return typeArgs.first.isVoid ? null : _getInnerMostType(typeArgs.first);
  }

  return type;
}

class _ReturnModel {
  final DartType type;
  final bool isInline;

  const _ReturnModel(this.type, [this.isInline = false]);
}
