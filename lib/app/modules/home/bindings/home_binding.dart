import 'package:get/get.dart';
import 'package:suitmedia_fe/app/modules/list_user/controllers/list_user_controller.dart';
import 'package:suitmedia_fe/app/modules/user/controllers/user_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListUserController>(
      () => ListUserController(),
    );
    Get.lazyPut<UserController>(
      () => UserController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
