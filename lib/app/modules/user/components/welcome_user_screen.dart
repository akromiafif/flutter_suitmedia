import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_fe/app/modules/home/components/background.dart';
import 'package:suitmedia_fe/app/modules/home/components/responsive.dart';
import 'package:suitmedia_fe/app/modules/user/components/choose_btn.dart';
import 'package:suitmedia_fe/app/modules/user/components/welcome_image.dart';
import 'package:suitmedia_fe/app/modules/user/controllers/user_controller.dart';

class WelcomeUserScreen extends GetView<UserController> {
  const WelcomeUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = Get.arguments;

    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            desktop: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(
                  child: WelcomeImage(),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 450,
                        child: ChooseBtn(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            mobile: const MobileWelcomeUserScreen(),
          ),
        ),
      ),
    );
  }
}

class MobileWelcomeUserScreen extends StatelessWidget {
  const MobileWelcomeUserScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const WelcomeImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: ChooseBtn(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
