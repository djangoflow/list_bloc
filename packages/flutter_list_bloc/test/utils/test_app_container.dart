import 'package:flutter/material.dart';

class TestAppContainer extends StatelessWidget {
  const TestAppContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: child),
    );
  }
}
