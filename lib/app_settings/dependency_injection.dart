import 'package:get/get.dart';
import 'package:organizer_app/app_settings/parts/internet_check.dart';
import 'package:organizer_app/app_settings/parts/session_controller.dart';
import 'package:organizer_app/widgets/login/model/registration_model.dart';
import '../grpc/grpc_client.dart';
import '../widgets/login/controller/phone_field_controller.dart';
import '../widgets/login/controller/registration_way_controller.dart';
import '../widgets/navigation/bottom_navigation_bar/controller/my_tab_controller.dart';
import '../widgets/navigation/bottom_navigation_bar/view/bottom_navigation_bar_view.dart';
import '../widgets/navigation/floating_action_button_view/controller/my_floating_action_button_controller.dart';


dependencyInjection() {
  Get.put(PhoneFieldController());
  Get.put(InternetCheck());
  Get.put(SessionController());
  Get.put(GRPCClient());
  Get.put(RegistrationModel());
  Get.put(MyFloatingActionButtonController());
  Get.put(MyTabController());
  Get.put(MyBottomNavigationBar());
  Get.put(RegistrationCompleteWay());
}