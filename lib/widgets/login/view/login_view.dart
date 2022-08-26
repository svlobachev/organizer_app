import 'package:organizer_app/app_settings/parts/internet_check.dart';
import 'package:organizer_app/widgets/login/controller/phone_field_controller.dart';
import 'package:organizer_app/widgets/pinput/view/pinput_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'dart:ui' as ui;


class MyLogin extends StatelessWidget {
  MyLogin({Key? key}) : super(key: key);
  final phoneFieldController = Get.put(PhoneFieldController());
  final internetCheck = Get.put(InternetCheck());
  final _onVisible = false.obs;
  Box box = Hive.box('RegistrationBox');

  @override
  Widget build(BuildContext context) {
    var languageCode = ui.window.locale.languageCode.toUpperCase();
    box.put('languageCode', languageCode);
    if (languageCode == "EN") {
      languageCode = "US";
    }
    return Scaffold(
      body: Center(
        child: Container(
          width: 800.0,
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'welcome'.tr,
                style: const TextStyle(height: 2, fontSize: 20),
              ),
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'PhoneNumber'.tr,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: languageCode,
                // countries:  const ['RU', 'US'],
                // ignore: deprecated_member_use
                searchText: 'searchCountry'.tr,
                invalidNumberMessage: 'invalidMobileNumber'.tr,
                onChanged: (phone) async {
                  phoneFieldController.phoneNumber = phone;
                  // loginModel.phoneNumber = phone;
                  _onVisible.value = phoneFieldController.fieldSwitcher();
                },
                onTap: () async {
                  internetCheck.initConnectivity();
                },
              ),
              Obx(() => Visibility(
                  // maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: _onVisible.value ? true : false,
                  child: PinPutView())),
            ],
          ),
        ),
      ),
    );
  }
}
