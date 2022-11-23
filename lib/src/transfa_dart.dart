// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:transfa_dart/enums/enums.dart';
import 'package:transfa_dart/src/clients/dio_transfa_client.dart';
import 'package:transfa_dart/src/core/transfa_api_client.dart';

export '../src/api/v1/status.dart';

/// {@template transfa_dart}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
///
class TransfaDart {
  /// {@macro transfa_dart}
  TransfaDart({
    required this.apiKey,
    this.apiVersion = ApiVersion.v1,
    this.httpClient = TransfaHttpClient.dioClient,
    this.testMode = false,
    this.enableLog = false,
  });

  ///
  final String apiKey;

  ///
  final bool enableLog;

  ///
  ApiVersion apiVersion;

  ///
  final TransfaHttpClient httpClient;

  ///
  bool testMode;

  ///
  TransfaApiClient get client {
    // if (httpClient == TransfaHttpClient.dioClient) {
    return DioTransfaClient(
      apiKey: apiKey,
      testMode: testMode,
      version: apiVersion,
    );
    // } else {

    // }
  }
}
