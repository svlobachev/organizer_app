import 'package:organizer_app/app_settings/parts/session_controller.dart';
import 'package:organizer_app/widgets/login/view/login_view.dart';
import 'package:organizer_app/widgets/pages/main_page.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class RegistrationCompleteWay{
  registrationWay(){

    final SessionController _session = Get.find();
    Box box = Hive.box('RegistrationBox');
    if (box.containsKey('registrationComplete') &&
        box.get('registrationComplete') == 'true'){
      _session.sessionPutToHive();
      return  MainPage();
    }
      return MyLogin();
  }
}