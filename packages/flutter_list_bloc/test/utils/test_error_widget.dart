import 'package:flutter/material.dart';

class TestErrorWidget extends StatelessWidget {
  const TestErrorWidget(this.value, {Key? key}) : super(key: key);
  final Object? value;
  @override
  Widget build(BuildContext context) {
    return Text(value.toString());
  }
}
