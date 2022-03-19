import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

@freezed
class OffsetLimitFilter with _$OffsetLimitFilter {
  static const kPageSize = 50;

  const factory OffsetLimitFilter(
      {required int offset,
      @Default(kPageSize) int limit}) = _OffsetLimitFilter;
}
