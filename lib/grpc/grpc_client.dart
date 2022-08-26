import 'package:organizer_app/widgets/login/model/registration_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'generated/organizer.pbgrpc.dart';

class GRPCClient {
  Box box = Hive.box('RegistrationBox');
  RegistrationModel registrationController = Get.put(RegistrationModel());

  clientChannel() {
    var channel = ClientChannel(
      // 'localhost',
      // '10.0.2.2',
      '192.168.1.192',// mac
      // '192.168.1.34'// notebook
      port: 6565,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );

    return channel;
  }

  stubClient() {
    final stub = GreeterClient(clientChannel());
    return stub;
  }

  void registrationBoxRun() async {
    var names = <String, String>{};
    try {
      names['phoneNumber'] = box.get('phoneNumber');
      names['serverUserUuid'] = box.get('serverUserUuid');
      names['languageCode'] = box.get('languageCode');
      final response = await stubClient().sayHello(
        RequestMessage()..registrationBoxRequest.addAll(names),
        options: CallOptions(compression: const GzipCodec()),
      );
      registrationController.registrationProcessing(response.registrationBoxResponse);
    } catch (e) {
      debugPrint('Caught error: $e');
    }
    await clientChannel().shutdown();
  }
}
