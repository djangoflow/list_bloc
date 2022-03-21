import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';

@freezed
class Page<T> with _$Page<T> {
  static const kPageSize = 25;

  const Page._();

  int get offset => number * size;

  int get pages =>
      size == 0 ? 0 : count! ~/ size + (count! % size == 0 ? 0 : 1);

  const factory Page(
      {List<T>? data,
      int? count,
      required int number,
      required int size}) = _Page;
}
