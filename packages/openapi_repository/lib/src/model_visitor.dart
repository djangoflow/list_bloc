// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class InlineClassVisitor extends SimpleElementVisitor {
  final fields = <FieldElement>[];
  final parameters = [];

  @override
  void visitFieldElement(FieldElement element) {
    parameters.add(element);
    if (element.displayName == 'results') fields.add(element);
  }
}

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
