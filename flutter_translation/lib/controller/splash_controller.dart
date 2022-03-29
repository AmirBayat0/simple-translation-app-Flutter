import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void nextScreen(Widget next) {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Get.offAll(() => next, transition: Transition.cupertino);
      },
    );
  }
}
