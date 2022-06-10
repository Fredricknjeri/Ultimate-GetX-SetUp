import 'package:get/get.dart';

import 'login_controller.dart';

class SignInBinding extends Bindings{
   @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(apiRepository: Get.find()));
  }
}