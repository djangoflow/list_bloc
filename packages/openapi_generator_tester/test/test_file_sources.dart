class TestFileSources {
  static final apiRepositoryWithBuilderList = r'''
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_generator_tester/models/test_api_repository.dart';
import 'package:openapi_generator_tester/models/test_item_repository.dart';
import 'package:openapi_generator_tester/test_interceptor.dart';
import 'package:openapi_repository_annotations/openapi_repository_annotations.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;

part 'api_repository.openapi.dart';
part 'api_repository.freezed.dart';
part 'api_repository.g.dart';

@OpenapiRepository(
  buildFor: TestApiRepository,
  builderList: [
    RepositoryBuilder(TestItemRepository),
  ],
  liveBasePath: r'https://127.0.0.1/api/v0',
  baseUrl: r'https://127.0.0.1/api/v0',
  dioInterceptor: TestDioInterceptors,
  defaultPageSize: 100,
  defaultOffset: 0,
  sendTimeout: 3000,
  connectTimeout: 3000,
  receiveTimeout: 5000,
)
abstract class $ApiRepository {}

''';

  static final apiRepositoryWithoutBuilderListItem = r'''
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_generator_tester/models/test_api_repository.dart';
import 'package:openapi_generator_tester/models/test_item_repository.dart';
import 'package:openapi_generator_tester/test_interceptor.dart';
import 'package:openapi_repository_annotations/openapi_repository_annotations.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;

part 'api_repository.openapi.dart';
part 'api_repository.freezed.dart';
part 'api_repository.g.dart';

@OpenapiRepository(
  buildFor: TestApiRepository,
  builderList: [],
  liveBasePath: r'https://127.0.0.1/api/v0',
  baseUrl: r'https://127.0.0.1/api/v0',
  dioInterceptor: TestDioInterceptors,
  defaultPageSize: 100,
  defaultOffset: 0,
  sendTimeout: 3000,
  connectTimeout: 3000,
  receiveTimeout: 5000,
)
abstract class $ApiRepository {}

''';

  static final apiRepositoryWithIngoreIgnoreListItemEndpoints = r'''
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_generator_tester/models/test_api_repository.dart';
import 'package:openapi_generator_tester/models/test_item_repository.dart';
import 'package:openapi_generator_tester/test_interceptor.dart';
import 'package:openapi_repository_annotations/openapi_repository_annotations.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;

part 'api_repository.openapi.dart';
part 'api_repository.freezed.dart';
part 'api_repository.g.dart';

@OpenapiRepository(
  buildFor: TestApiRepository,
  builderList: [
    RepositoryBuilder(TestItemRepository, ignoreEndpoints: ['itemList']),
  ],
  liveBasePath: r'https://127.0.0.1/api/v0',
  baseUrl: r'https://127.0.0.1/api/v0',
  dioInterceptor: TestDioInterceptors,
  defaultPageSize: 100,
  defaultOffset: 0,
  sendTimeout: 3000,
  connectTimeout: 3000,
  receiveTimeout: 5000,
)
abstract class $ApiRepository {}

''';

  static final generatedFileWithIgnoreListItemEndpoint =
      r'''// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repository.dart';

// **************************************************************************
// OpenapiRepositoryGenerator
// **************************************************************************

class ApiRepository {
  static ApiRepository get instance => _instance;
  static final ApiRepository _instance = ApiRepository._internal();

  ApiRepository._internal() {
    _openapi.dio.options
      ..baseUrl = 'https://127.0.0.1/api/v0'
      ..connectTimeout = 3000
      ..receiveTimeout = 5000
      ..sendTimeout = 3000;
    _openapi.dio.interceptors.add(TestDioInterceptors());
  }

  static const String liveBasePath = 'https://127.0.0.1/api/v0';

  static final Openapi _openapi = Openapi(
    basePathOverride: kReleaseMode ? liveBasePath : null,
    interceptors: [],
  );

  Openapi get api => _openapi;
  TestItemRepository get test => api.getTestApi();
}

//Typdef for ItemReadState

typedef ItemReadState = Data<int, ItemReadFilter>;

//Filter for ItemReadFilter

@freezed
class ItemReadFilter with _$ItemReadFilter {
  const ItemReadFilter._();

  const factory ItemReadFilter({
    required int data,
  }) = _ItemReadFilter;

  factory ItemReadFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ItemReadFilterFromJson(map);
}

// Repository for ItemRepository

abstract class ItemRepository {
  static Future<int> read([
    ItemReadFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.test.itemRead(
      data: filter.data,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }

  Future<int?> updateObject({
    required int data,
  }) async {
    final r = (await ApiRepository.instance.test.itemUpdate(
      data: data,
    ));

    return r.data;
  }
}

// DataCubit for Item

class ItemDataBloc extends DataCubit<int, ItemReadFilter> with ItemRepository {
  ItemDataBloc(
    Future<int> Function([
      ItemReadFilter? filter,
    ])
        loader,
  ) : super(ItemRepository.read);

  @override
  Future<int?> updateObject({
    required int data,
  }) async {
    final r = await super.updateObject(
      data: data,
    );
    await super.load(state.filter);

    return r;
  }
}
''';

  static final generatedFileWithBuilderList =
      r'''// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repository.dart';

// **************************************************************************
// OpenapiRepositoryGenerator
// **************************************************************************

class ApiRepository {
  static ApiRepository get instance => _instance;
  static final ApiRepository _instance = ApiRepository._internal();

  ApiRepository._internal() {
    _openapi.dio.options
      ..baseUrl = 'https://127.0.0.1/api/v0'
      ..connectTimeout = 3000
      ..receiveTimeout = 5000
      ..sendTimeout = 3000;
    _openapi.dio.interceptors.add(TestDioInterceptors());
  }

  static const String liveBasePath = 'https://127.0.0.1/api/v0';

  static final Openapi _openapi = Openapi(
    basePathOverride: kReleaseMode ? liveBasePath : null,
    interceptors: [],
  );

  Openapi get api => _openapi;
  TestItemRepository get test => api.getTestApi();
}

//Typdef for ItemReadState

typedef ItemReadState = Data<int, ItemReadFilter>;

//Filter for ItemReadFilter

@freezed
class ItemReadFilter with _$ItemReadFilter {
  const ItemReadFilter._();

  const factory ItemReadFilter({
    required int data,
  }) = _ItemReadFilter;

  factory ItemReadFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ItemReadFilterFromJson(map);
}

//Typdef for ItemListState

typedef ItemListState = Data<List<int>, ItemListFilter>;

//Filter for ItemListFilter

@freezed
class ItemListFilter with _$ItemListFilter {
  const ItemListFilter._();

  const factory ItemListFilter({
    required int multiplier,
  }) = _ItemListFilter;

  factory ItemListFilter.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$ItemListFilterFromJson(map);
}

// Repository for ItemRepository

abstract class ItemRepository {
  static Future<int> read([
    ItemReadFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.test.itemRead(
      data: filter.data,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }

  static Future<List<int>> list([
    ItemListFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.test.itemList(
      multiplier: filter.multiplier,
    );

    return r.data?.asList() ?? [];
  }

  Future<int?> updateObject({
    required int data,
  }) async {
    final r = (await ApiRepository.instance.test.itemUpdate(
      data: data,
    ));

    return r.data;
  }
}

// DataCubit for Item

class ItemDataBloc extends DataCubit<int, ItemReadFilter> with ItemRepository {
  ItemDataBloc(
    Future<int> Function([
      ItemReadFilter? filter,
    ])
        loader,
  ) : super(ItemRepository.read);

  @override
  Future<int?> updateObject({
    required int data,
  }) async {
    final r = await super.updateObject(
      data: data,
    );
    await super.load(state.filter);

    return r;
  }
}

// ListCubit for Item

class ItemListBloc extends ListCubit<int, ItemListFilter> with ItemRepository {
  ItemListBloc(
    Future<List<int>> Function([
      ItemListFilter? filter,
    ])
        loader,
  ) : super(ItemRepository.list);

  @override
  Future<int?> updateObject({
    required int data,
  }) async {
    final r = await super.updateObject(
      data: data,
    );
    await super.reload();

    return r;
  }
}
''';

  static final generatedFileWithEmptyBuilderList =
      r'''// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_repository.dart';

// **************************************************************************
// OpenapiRepositoryGenerator
// **************************************************************************

class ApiRepository {
  static ApiRepository get instance => _instance;
  static final ApiRepository _instance = ApiRepository._internal();

  ApiRepository._internal() {
    _openapi.dio.options
      ..baseUrl = 'https://127.0.0.1/api/v0'
      ..connectTimeout = 3000
      ..receiveTimeout = 5000
      ..sendTimeout = 3000;
    _openapi.dio.interceptors.add(TestDioInterceptors());
  }

  static const String liveBasePath = 'https://127.0.0.1/api/v0';

  static final Openapi _openapi = Openapi(
    basePathOverride: kReleaseMode ? liveBasePath : null,
    interceptors: [],
  );

  Openapi get api => _openapi;
  TestItemRepository get test => api.getTestApi();
}
''';
}
