import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../bottom_navigation_bar/view/bottom_navigation_bar_view.dart';

MyBottomNavigationBar myBottomNavigationBar = Get.put(MyBottomNavigationBar());

class MyFloatingActionButtonController extends GetxController {
  late Image _myIcon;
  late Rx<MaterialColor> _myCollor;
  late BuildContext _context;

  set setContext(BuildContext value) {
    _context = value;
  }

  // MyFloatingActionButtonController get getController => Get.find();// add this line

  set setMyIcon(Image value) {
    _myIcon = value;
  }

  set setMyCollor(Rx<MaterialColor> value) {
    _myCollor = value;
  }

  Rx<MaterialColor> get getMyColor {
    _myCollor == Colors.red
        ? _myCollor.value = Colors.green
        : _myCollor.value = Colors.red;
    return _myCollor;
  }

  Image get getMyIcon {
    _myCollor == Colors.red
        ? {
            _myIcon = Image.asset(
              'assets/img/icons8-off-80-black.png',
              height: 40,
            ),
            // CustomSnackBar(_context, Text('IAmUnavailable'.tr), _myCollor.value)
          }
        : {
            _myIcon = _myIcon = Image.asset(
              'assets/img/icons8-on-80-black.png',
              height: 40,
            ),
            // CustomSnackBar(_context, Text('IAmAvailable'.tr), _myCollor.value)
          };
    return _myIcon;
  }
}
