import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/controllers/auth_controller.dart';
import 'package:money_manager/screens/bottom_navbar_home.dart';
import 'package:money_manager/screens/login.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthController>().user) != null ? BottomNavHome() : Login();
    });
  }
}
