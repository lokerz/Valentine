import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:valentine/pages/first_page.dart';
import 'package:valentine/pages/sixth_page.dart';

import '../helper/choice_manager.dart';
import '../helper/color_button.dart';
import '../utils/font_styles.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  // Function to build the buttons
  Widget buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorButton(
            text: 'Yes!',
            color: Colors.teal,
            onPressed: () {
              Get.to(() => const SixthPage());
            }),
        const SizedBox(width: 15),
        ColorButton(
            text: 'No?',
            color: Colors.teal,
            onPressed: () {
              Get.offAll(() => FirstPage());
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal.shade50,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/fifthPage.png', // replace with your image path
                  height: 150.h,
                ),
                const SizedBox(height: 15),
                Text(
                  'I want ${ChoiceManager().secondChoice ?? ""},',
                  style: FontStyles.bold(size: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Text(
                  'I want to go to ${ChoiceManager().thirdChoice ?? ""},',
                  style: FontStyles.bold(size: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Text(
                  'I want to eat ${ChoiceManager().fourthChoice ?? ""}',
                  style: FontStyles.bold(size: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Text(
                  'with You!',
                  style: FontStyles.bold(size: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Text(
                  '(Dont forget to screenshoot!)',
                  style: FontStyles.regular(size: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                buildButtons(),
                // Call the function to build buttons
              ],
            ),
          ),
        ));
  }
}
