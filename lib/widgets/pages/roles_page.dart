import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/checkbox_list_tile/gf_checkbox_list_tile.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:organizer_app/app_settings/parts/session_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../navigation/bottom_navigation_bar/view/bottom_navigation_bar_view.dart';

class RolesPage extends StatelessWidget {
  RolesPage({Key? key}) : super(key: key);

  final SessionController _session = Get.find();
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    _session.sessionControl();
    return Scaffold(
        // appBar: const MyAppBar(),
        // drawer: const NavDrawer(),
        body: Scaffold(
          bottomNavigationBar: MyBottomNavigationBar(),
          body: GFCheckboxListTile(
            titleText: 'Arthur Shelby',
            subTitleText: 'By order of the peaky blinders',
            avatar: GFAvatar(
              backgroundImage: AssetImage('Assets image here'),
            ),
            size: 25,
            activeBgColor: Colors.green,
            type: GFCheckboxType.circle,
            activeIcon: Icon(
              Icons.check,
              size: 15,
              color: Colors.white,
            ),
            onChanged: (value) {
              isChecked = value;
            },
            value: isChecked,
            inactiveIcon: null,
          ),
        ));
  }
}
