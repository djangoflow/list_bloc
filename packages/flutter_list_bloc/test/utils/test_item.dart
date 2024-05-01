import 'package:flutter/material.dart';

class TestItem extends StatelessWidget {
  final String value;

  const TestItem(
    this.value, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(value);
  }
}
