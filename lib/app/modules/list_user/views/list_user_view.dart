import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_fe/app/data/constants.dart';
import 'package:suitmedia_fe/app/modules/home/components/welcome_screen_top.dart';
import 'package:suitmedia_fe/app/modules/list_user/components/list_user_card.dart';
import '../controllers/list_user_controller.dart';

class ListUserView extends GetView<ListUserController> {
  const ListUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding * 2, vertical: 10.0),
          child: Obx(
            () => controller.isLoading.value
                ? Center(
                    child: Text(
                      'Loading ...',
                      style: GoogleFonts.lato(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WelcomeScreenTopImage(),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: controller.response.value.perPage,
                          itemBuilder: (context, index) {
                            return ListUserCard(
                              firstName: controller
                                  .response.value.data[index].firstName,
                              lastName: controller
                                  .response.value.data[index].lastName,
                              email:
                                  controller.response.value.data[index].email,
                              imgUrl:
                                  controller.response.value.data[index].avatar,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
