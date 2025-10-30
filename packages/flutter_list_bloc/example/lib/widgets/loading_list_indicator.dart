import 'package:flutter/material.dart';

class LoadingListIndicator extends StatelessWidget {
  const LoadingListIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      height: 40,
      color: Colors.grey[200],
    );
  }
}
