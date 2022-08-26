import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class RegistrationModel {
  Box box = Hive.box('RegistrationBox');
  bool registrationProcessing(registrationBoxResponse) {
    if (registrationBoxResponse.containsKey('registrationComplete') &&
        registrationBoxResponse['registrationComplete'] == 'false') {
      box.put('registrationPinCode', registrationBoxResponse['registrationPinCode']);
      box.put('tempServerUserUuid', registrationBoxResponse['serverUserUuid']);
    } else if (registrationBoxResponse.containsKey('registrationComplete') &&
        registrationBoxResponse['registrationComplete'] == 'true') {}
    debugPrint('GRPC client received: $registrationBoxResponse');
    return false;
  }
}
