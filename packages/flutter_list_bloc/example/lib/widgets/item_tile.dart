import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({super.key, required this.item});
  final String item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        item,
        textAlign: TextAlign.center,
      ),
    );
  }
}
