import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_fe/app/data/constants.dart';
import 'package:suitmedia_fe/app/modules/list_user/views/list_user_view.dart';
import 'package:suitmedia_fe/app/modules/user/controllers/user_controller.dart';

class ChooseBtn extends GetView<UserController> {
  const ChooseBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Text(
            '${controller.fullName}',
            style: GoogleFonts.lato(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () async {
            String? result = await Get.to<String>(const ListUserView());
            controller.fullName.value = result!;
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryLightColor, elevation: 0),
          child: Text(
            "Choose a User",
            style: GoogleFonts.lato(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
