import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  bool isLastPage = false;
  bool isSkipped = false;
  bool isDarkMode = false;
  bool isDarkModeOn = false;
  bool isDarkModeOff = false;
  bool isDarkModeAuto = false;

  /// Update current index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
    // if (index == 2) {
    //   Future.delayed(const Duration(seconds: 10)).then((_) {
    //     if (currentPageIndex.value == 2) {
    //       Get.offAll(() => const LoginScreen());
    //     }
    //   });
    // }
  }
  
  /// Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      currentPageIndex.value++;
      pageController.jumpToPage(currentPageIndex.value);
      // int page = currentPageIndex.value++;
      // pageController.jumpToPage(page);
    }
  }

  /// Update current index and jump to previous page
  void previousPage() {
  }

  /// Update current index and skip to last page
  void skipPage() {
    Get.offAll(() => const LoginScreen());
  }

  void handlePageEnd() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    }
  }

}