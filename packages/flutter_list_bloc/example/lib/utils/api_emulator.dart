import 'package:list_bloc/list_bloc.dart';

abstract class APIEmulator {
  static const Duration _duration = Duration(seconds: 2);

  static Future<List<String>> fetchList({
    int? page,
    int pageSize = OffsetLimitFilter.kPageSize,
  }) async {
    await Future.delayed(_duration);
    final actualPage = page ?? 0;
    return List.generate(
      pageSize,
      (index) => 'Item ${(index + 1) + (actualPage * pageSize)}',
    );
  }

  static Future<ListPage<String>> fetchPaginated({
    required int page,
    int pageSize = ListPage.kPageSize,
  }) async {
    await Future.delayed(_duration);
    final list = List.generate(
      pageSize,
      (index) => 'Item ${(index + 1) + (page * pageSize)}',
    );

    return ListPage(
      data: list,
      number: page,
      count: list.length,
      size: pageSize,
    );
  }

  static Future<String> fetchData() async {
    await Future.delayed(_duration);
    return 'Data loaded at ${DateTime.now().toString()}';
  }
}
