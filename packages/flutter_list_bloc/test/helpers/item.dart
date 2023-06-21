import 'package:equatable/equatable.dart';
import 'package:list_bloc/list_bloc.dart';

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

class OffsetItemFilter extends OffsetLimitFilter {
  final int _offset;
  final int _limit;

  OffsetItemFilter(this._offset, this._limit);

  @override
  int get limit => _limit;

  @override
  int get offset => _offset;

  @override
  OffsetLimitFilter copyWithOffset(int offset) {
    return OffsetItemFilter(offset, _limit);
  }
}
