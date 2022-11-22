import 'dart:io';

import 'package:dio/dio.dart';
import 'package:transfa_dart/enums/enums.dart';
import 'package:transfa_dart/src/core/base_model.dart';
import 'package:transfa_dart/src/core/transfa_api_client.dart';

///
class DioTransfaClient extends TransfaApiClient {
  ///
  DioTransfaClient({
    required super.apiKey,
    super.version,
    super.testMode,
  });

  late final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        HttpHeaders.authorizationHeader: apiKey,
      },
    ),
  );

  @override
  Future<Map<String, dynamic>> get({required String path}) async {
    var response = <String, dynamic>{};

    try {
      await _dio.get(path).then((value) {
        response = value.data as Map<String, dynamic>;
      });
    } on DioError {
      rethrow;
    }
    return response;
  }

  @override
  Future<Map<String, dynamic>> post(
      {required String path, required Map<String, dynamic> data}) async {
    var response = <String, dynamic>{};

    try {
      await _dio
          .post(
        path,
        data: data,
      )
          .then((value) {
        response = value.data as Map<String, dynamic>;
      });
    } on DioError {
      rethrow;
    }
    return response;
  }
}
