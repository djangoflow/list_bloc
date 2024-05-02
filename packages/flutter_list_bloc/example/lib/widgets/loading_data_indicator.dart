import 'package:flutter/material.dart';

class LoadingDataIndicator extends StatelessWidget {
  const LoadingDataIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
