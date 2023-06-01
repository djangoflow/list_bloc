import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final ItemType type;
  final String value;

  const Item({
    required this.type,
    required this.value,
  });

  @override
  List<Object> get props => [
        type,
        value,
      ];
}

enum ItemType {
  fruit,
  vegetable,
}
