import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneFieldController {
  final _box = Hive.box('RegistrationBox');
  late PhoneNumber _phoneNumber;
  late String _phone;
  late String _countryISOCode;
  final int _countriesLength = countries.length;

  set phoneNumber(PhoneNumber value) {
    _phoneNumber = value;
    _phone = _phoneNumber.number;
    _countryISOCode = _phoneNumber.countryISOCode;
  }

  bool phoneValidationLength() {
    for (int i = 0; i < _countriesLength; i++) {
      if (countries[i].code == _countryISOCode &&
          _phone.length == countries[i].minLength) {
        // final newCompleteNumber =
        //     _phoneNumber.completeNumber.replaceAll('+', '');
        _box.put('phoneNumber', _phoneNumber.completeNumber);
        debugPrint("phoneNumber --> ${_phoneNumber.completeNumber}");
        return true;
      }
    }
    return false;
  }

  bool fieldSwitcher() {
    if (phoneValidationLength()) {
      return true;
    }
    return false;
  }
}
