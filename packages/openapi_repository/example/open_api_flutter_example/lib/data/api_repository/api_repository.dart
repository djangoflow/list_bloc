import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi/openapi.dart';
import 'package:openapi_repository_annotations/openapi_repository_annotations.dart';
import 'package:dio/dio.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:built_collection/built_collection.dart';
part 'api_repository.openapi.dart';
part 'api_repository.freezed.dart';
part 'api_repository.g.dart';

@OpenapiRepository(
  buildFor: Openapi,
  builderList: [
    ListRepositoryBuilder(PetApi),
    ListRepositoryBuilder(StoreApi),
    ListRepositoryBuilder(UserApi),
  ],
  liveBasePath: r'https://petstore.swagger.io/v2',
  baseUrl: r'https://petstore.swagger.io/v2',
  dioInterceptor: Interceptor,
  defaultPageSize: 100,
  defaultOffset: 0,
  sendTimeout: 3000,
  connectTimeout: 3000,
  receiveTimeout: 5000,
)
abstract class $ApiRepository {}
