import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:suitmedia_fe/app/modules/user/components/welcome_user_screen.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: WelcomeUserScreen());
  }
}
