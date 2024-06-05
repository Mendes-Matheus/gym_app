import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../screens/signup/signup.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  bool isLastPage = false;
  bool isSkipped = false;
  bool isDarkMode = false;
  bool isDarkModeOn = false;
  bool isDarkModeOff = false;
  bool isDarkModeAuto = false;


  void signupPage() {
      Get.offAll(() => const SignupScreen());
  }


}
