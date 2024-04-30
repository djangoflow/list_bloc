import 'package:list_bloc/list_bloc.dart';

class ContinuousOffsetFilter extends OffsetLimitFilter {
  ContinuousOffsetFilter({this.limit = 1000, this.offset = 0});

  @override
  final int limit;
  @override
  final int offset;

  @override
  copyWithOffset(int offset) => ContinuousOffsetFilter(
        limit: limit,
        offset: offset,
      );

  int get page => offset ~/ OffsetLimitFilter.kPageSize;
}
