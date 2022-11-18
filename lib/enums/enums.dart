///
enum PaymentStatus {
  completed,
  processing,
  pending,
  failed,
}

///
enum ApiVersion {
  ///
  v1,
}

///
enum TransfaHttpClient {
  ///
  dioClient,
}

///
class PaymentMode {
  ///
  static const mtnBenin = 'mtn-benin';
}

///
class PaymentEventHook {
  ///
  static const processing = 'payment:processing';

  ///
  static const failed = 'payment:failed';

  ///
  static const success = 'payment:success';
}

///
class APIKeyPrefix {
  ///
  static const test = 'ak_test';

  ///
  static const live = 'ak_live';
}

///
class PrivateSecretPrefix {
  ///
  static const test = 'ps_test';

  ///
  static const live = 'ps_live';
}
