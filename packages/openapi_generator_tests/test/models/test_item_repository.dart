// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';

class TestItemRepository {
  //sample list method
  Future<Response<BuiltList<int>>> itemList({required int multiplier}) async {
    final _options = Options(
      method: r'POST',
    );

    return Response<BuiltList<int>>(
      requestOptions: RequestOptions(path: ''),
      data: BuiltList<int>(List.generate(3, (index) => index * multiplier)),
    );
  }

  //sample read method
  Future<Response<int>> itemRead({required int data}) async {
    final _options = Options(
      method: r'GET',
    );

    return Response(
      requestOptions: RequestOptions(path: ''),
      data: data,
    );
  }

  //sample update method
  Future<Response<int>> itemUpdate({required int data}) async {
    final _options = Options(
      method: r'PUT',
    );

    return Response(
      requestOptions: RequestOptions(path: ''),
      data: data,
    );
  }

  //sample partialUpdate method
  Future<Response<int>> itemPartialUpdate({required int data}) async {
    final _options = Options(
      method: r'GET',
    );

    return Response(
      requestOptions: RequestOptions(path: ''),
      data: data,
    );
  }

  // sample multiply method
  Future<Response<Object>> itemTwoMultiply({required int multiplier}) async {
    final _options = Options(
      method: r'POST',
    );

    return Response(
      requestOptions: RequestOptions(path: ''),
      data: 2 * multiplier,
    );
  }
}
