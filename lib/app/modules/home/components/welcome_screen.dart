import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_fe/app/data/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            style: GoogleFonts.openSans(fontSize: 16),
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            decoration: const InputDecoration(
              hintText: "Name",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              style: GoogleFonts.openSans(fontSize: 16),
              cursorColor: kPrimaryColor,
              validator: ((value) {
                String? original = value;
                String? reverse = original!.split('').reversed.join('');

                if (reverse == original) {
                  return null;
                } else {
                  return "It's not palindrome";
                }
              }),
              decoration: const InputDecoration(
                hintText: "Palindrome",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.account_tree_sharp),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Hero(
            tag: "chech_btn",
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.rightSlide,
                    title: "It's palindrome",
                    desc: 'Your word is actually palindrome',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                    buttonsTextStyle: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ).show();
                } else {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.error,
                    animType: AnimType.rightSlide,
                    title: "It's not palindrome",
                    desc: 'Your word is actually not palindrome',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                    buttonsTextStyle: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ).show();
                }
              },
              child: Text(
                "check".toUpperCase(),
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Hero(
            tag: "next_btn",
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "next".toUpperCase(),
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}
