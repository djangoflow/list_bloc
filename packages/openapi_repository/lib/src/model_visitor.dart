// ignore_for_file: depend_on_referenced_packages

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
