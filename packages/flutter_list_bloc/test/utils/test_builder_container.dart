import 'package:flutter/material.dart';

class TestBuilderContainer extends StatelessWidget {
  const TestBuilderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
