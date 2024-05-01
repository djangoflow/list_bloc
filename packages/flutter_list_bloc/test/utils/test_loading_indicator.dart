import 'package:flutter/material.dart';

class TestLoadingIndicator extends StatefulWidget {
  const TestLoadingIndicator({Key? key}) : super(key: key);

  @override
  State<TestLoadingIndicator> createState() => _TestLoadingIndicatorState();
}

class _TestLoadingIndicatorState extends State<TestLoadingIndicator> {
  @override
  Widget build(BuildContext context) {
    return Text('LAODING');
  }
}
