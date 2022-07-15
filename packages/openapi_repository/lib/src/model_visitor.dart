// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

/// This class visit elements and detects if any method return type has a field called `results`
class InlineClassVisitor extends SimpleElementVisitor {
  final fields = <FieldElement>[];
  final parameters = [];

  @override
  void visitFieldElement(FieldElement element) {
    parameters.add(element);
    if (element.displayName == 'results') fields.add(element);
  }
}

/// This class visits ASTNodes and detects the api call type by
/// checking the value of 'method' variable if it is GET, POST, etc and returns it.
class NamedExpressionVisitor extends RecursiveAstVisitor<void> {
  String? methodType;

  @override
  void visitNamedExpression(NamedExpression node) {
    if (node.element?.name == 'method') {
      methodType = node.expression.toString();
    }
    super.visitNamedExpression(node);
  }
}
