import 'package:transfa_dart/src/helpers/endpoints.dart';
import 'package:transfa_dart/transfa_dart.dart';

///
extension Status on TransfaDart {
  ///
  Future<bool> isTransfaActive() async {
    var isActive = false;

    try {
      await client
          .get(
        path: Endpoints.status,
      )
          .then((value) {
        isActive = value['detail'] as bool;
      });
    } catch (e) {
      if (enableLog) {}
    }

    return isActive;
  }
}
