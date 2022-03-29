import 'package:get/get.dart';

import '../controller/splash_controller.dart';
import '../controller/translate_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TranslateController());
    Get.put(SplashController());
  }
}
