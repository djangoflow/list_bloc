import 'package:equatable/equatable.dart';

// This class to be used as a mixin for a built_value filter
abstract class OffsetLimitFilter extends Equatable {
  static const kPageSize = 50;

  int get offset;
  int get limit;

  @override
  List<Object?> get props => [offset, limit];
}
