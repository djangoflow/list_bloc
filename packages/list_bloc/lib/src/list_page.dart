import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_page.freezed.dart';

@freezed
class ListPage<T> with _$ListPage<T> {
  static const kPageSize = 25;

  const ListPage._();

  int get offset => number * size;

  int get pages =>
      size == 0 ? 0 : count! ~/ size + (count! % size == 0 ? 0 : 1);

  const factory ListPage(
      {List<T>? data,
      int? count,
      required int number,
      required int size}) = _ListPage;
}
