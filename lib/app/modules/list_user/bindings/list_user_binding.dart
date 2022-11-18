import 'package:get/get.dart';
import 'package:suitmedia_fe/app/modules/home/controllers/home_controller.dart';
import 'package:suitmedia_fe/app/modules/user/controllers/user_controller.dart';

import '../controllers/list_user_controller.dart';

class ListUserBinding extends Bindings {
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
