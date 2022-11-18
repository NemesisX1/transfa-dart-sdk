import 'package:logger/logger.dart';
import 'package:transfa_dart/enums/enums.dart';
import 'package:transfa_dart/src/core/base_model.dart';
import 'package:transfa_dart/src/helpers/endpoints.dart';

/// basic interface to provide api client for Transfa
abstract class TransfaApiClient {
  ///
  TransfaApiClient({
    required this.apiKey,
    this.version = ApiVersion.v1,
    this.testMode = false,
  });

  /// your Tranfa's api key
  final String apiKey;

  /// to enable or disable the client's test mode or not
  final bool testMode;

  /// Transfa's base url
  final String baseUrl = Endpoints.baseUrl;

  /// api's current version
  final ApiVersion version;

  /// get https request handler
  Future<Map<String, dynamic>> get({required String path});

  /// post https request handler
  Future<Map<String, dynamic>> post({
    required String path,
    required Map<String, dynamic> data,
  });

  /// to have access to the logger from client
  Logger get logger => Logger();
}
