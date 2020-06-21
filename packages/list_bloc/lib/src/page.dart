class Page<T> {
  static const kPageSize = 25;
  final int number;
  final int size;

  final List<T>data;
  final int count;

  int get offset => number * size;
  int get pages => count ~/ size;

  Page<T> withData({List<T> data, int count})
    => Page<T>(data: data, number: number, size: size, count: count);

  Page({this.data = const [], this.number = 1, this.size = kPageSize, this.count = 0});
}
