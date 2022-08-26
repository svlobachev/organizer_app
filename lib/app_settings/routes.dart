import 'package:organizer_app/widgets/login/view/login_view.dart';
import 'package:organizer_app/widgets/pages/main_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../widgets/login/controller/registration_way_controller.dart';

RegistrationCompleteWay registrationCompleteWay =  RegistrationCompleteWay();


String myInitialRoute = '/';

List<GetPage> myGetPages = [
  // GetPage(name: '/', page: () =>  MyLogin()),
  GetPage(name: '/', page: () =>  registrationCompleteWay.registrationWay()),
  GetPage(name: '/mainPage', page: () =>  MainPage()),
  // GetPage(name: '/pinPut', page: () =>  PinPutView()),
];

GetPage myUnknownRoute = GetPage(name: '/notfound', page: () =>  MyLogin());
