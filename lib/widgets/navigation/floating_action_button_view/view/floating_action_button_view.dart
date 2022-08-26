import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../bottom_navigation_bar/view/bottom_navigation_bar_view.dart';

class MyFloatingActionButton extends StatelessWidget {
  MyFloatingActionButton({Key? key}) : super(key: key);
  Rx<MaterialColor> _myCollor = Colors.red.obs;
  Image _myIcon = Image.asset(
    'assets/img/icons8-off-80-black.png',
    height: 40,
  );

  @override
  Widget build(BuildContext context) {
    return Obx(() => FloatingActionButton(
          onPressed: () {
            myFloatingActionButtonController.setMyCollor = _myCollor;
            myFloatingActionButtonController.setMyIcon = _myIcon;
            _myCollor = myFloatingActionButtonController.getMyColor;
            _myIcon = myFloatingActionButtonController.getMyIcon;
          },
          elevation: 5,
          backgroundColor: _myCollor.value,
          child: _myIcon,
        ));
  }
}
