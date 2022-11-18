import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_fe/app/modules/list_user/controllers/list_user_controller.dart';

class ListUserCard extends GetView<ListUserController> {
  final String firstName;
  final String lastName;
  final String email;
  final String imgUrl;

  const ListUserCard({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.imgUrl,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.purple[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: () {
          Get.back(
            result: '$firstName $lastName',
          );
        },
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            imgUrl,
            width: 50,
            height: 50,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  firstName,
                  style: GoogleFonts.roboto(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  lastName,
                  style: GoogleFonts.roboto(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              email,
              style: GoogleFonts.lato(
                fontSize: 16.0,
                color: Colors.white60,
              ),
            ),
          ],
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white70,
        ),
      ),
    );
  }
}
