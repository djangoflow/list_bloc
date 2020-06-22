// This class to be used as a mixin for a built_value filter
abstract class OffsetLimitFilter  {
  static const kPageSize = 50;

  int get offset;
  int get limit;
}
