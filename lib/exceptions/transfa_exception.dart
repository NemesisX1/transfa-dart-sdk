///
class TransfaException implements Exception {
  ///
  TransfaException(
    this.msg, {
    this.responseMsg,
    required this.data,
  });

  ///
  String msg;

  ///
  Object data;

  ///
  String? responseMsg;
}
