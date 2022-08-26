import 'dart:ui';
import 'package:organizer_app/app_settings/parts/session_controller.dart';
import 'package:organizer_app/grpc/grpc_client.dart';
import 'package:organizer_app/widgets/pinput/view/footer_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pinput/pinput.dart';
import 'package:get/get.dart';
import 'header_view.dart';

class PinPutView extends StatelessWidget {
  PinPutView({Key? key}) : super(key: key);
  final SessionController _session = Get.find();
  Box box = Hive.box('RegistrationBox');
  GRPCClient gRPCClient = Get.find();
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          // color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    var color2 = Theme.of(context).colorScheme.primaryContainer;
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: color2),
      borderRadius: BorderRadius.circular(4),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
    return Column(
      children: [
        OtpHeader(),
        Pinput(
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: focusedPinTheme,
          submittedPinTheme: submittedPinTheme,
          validator: (shortcode) {
            if (shortcode != box.get('registrationPinCode')) {
              return 'pinIsIncorrect'.tr;
            }
            _session.sessionPutToHive();
            box.put('serverUserUuid', box.get('tempServerUserUuid'));
            box.delete('tempServerUserUuid');
            box.put('registrationComplete', 'true');
            gRPCClient.registrationBoxRun();
            Get.offNamed('/mainPage');
          },
          pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
          showCursor: true,
          onCompleted: (pin) {
            if (kDebugMode) {
              print(pin);
            }
          },
        ),
        const SizedBox(height: 14),
        OtpFooter(),
      ],
    );
  }
}
