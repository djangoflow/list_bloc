class ListPage<T> {
  static const kPageSize = 25;
  final int number;
  final int size;

  final List<T>?data;
  final int? count;

  int get offset => number * size;
  int get pages => count! ~/ size + (count! % size == 0 ? 0 : 1);

  ListPage<T> withData({List<T>? data, int? count})
    => ListPage<T>(data: data, number: number, size: size, count: count);

  ListPage({this.data = const [], this.number = 0, this.size = kPageSize, this.count = 0});

  @override
  String toString() => 'page $number size $size of $pages with $runtimeType: ${data?.length} elements $count total';
}
