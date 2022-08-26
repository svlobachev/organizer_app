
import 'package:organizer_app/app_settings/parts/session_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../navigation/bottom_navigation_bar/view/bottom_navigation_bar_view.dart';
import '../navigation/myAppBar.dart';
import '../navigation/navDrawer.dart';

class MainPage extends StatelessWidget {
   MainPage({Key? key}) : super(key: key);
  final SessionController _session = Get.put(SessionController());
  @override
  Widget build(BuildContext context) {
    _session.sessionControl();
    return Scaffold(
        appBar: const MyAppBar(),
        drawer: const NavDrawer(),
        body: Scaffold(
          bottomNavigationBar: MyBottomNavigationBar(),
        ));
  }
}