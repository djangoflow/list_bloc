import 'package:equatable/equatable.dart';

abstract class OffsetLimitFilter extends Equatable {
  static const kPageSize = 50;
  final int offset;
  final int limit;

  OffsetLimitFilter({this.offset = 0, this.limit = kPageSize});

  @override
  List<Object> get props => [offset, limit];
}
