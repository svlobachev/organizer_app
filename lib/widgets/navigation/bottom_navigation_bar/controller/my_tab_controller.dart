import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  List<Tab> myTabs = [
    Tab(
      // icon: const Icon(Icons.chat_bubble),
      icon: const Icon(Icons.chat_bubble),
      child: Text(
        'chats'.tr,
      ),
    ),
    Tab(
      icon: const Icon(Icons.radar),
      child: Text(
        'radar'.tr,
      ),
    ),
    Tab(
      icon: const Icon(Icons.theater_comedy),
      child: Text(
        'myTopics'.tr,
      ),
    ),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
