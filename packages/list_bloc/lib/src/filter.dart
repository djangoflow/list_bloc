abstract class OffsetLimitFilter {
  static const kPageSize = 50;
  int get offset;
  int get limit;

  copyWithOffset(int offset);
}
