import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

@freezed
class OffsetLimitFilter with _$OffsetLimitFilter {
  static const kPageSize = 50;

  const factory OffsetLimitFilter(
      {@Default(0) int offset,
      @Default(OffsetLimitFilter.kPageSize) int limit}) = _OffsetLimitFilter;
}
