import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:valentine/helper/choice_manager.dart';

import '../helper/color_button.dart';
import '../pages/third_page.dart';
import '../utils/font_styles.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  // Function to build the buttons
  Widget buildButtons() {
    return Column(
      children: [
        ColorButton(
            text: 'Chocolate!',
            color: Colors.blue,
            onPressed: () {
              ChoiceManager().secondChoice = 'Chocolate!';
              Get.to(() => const ThirdPage());
            }),
        const SizedBox(height: 15),
        ColorButton(
          text: 'Flowers!',
          color: Colors.blue,
          onPressed: () {
            ChoiceManager().secondChoice = 'Flowers!';
            Get.to(() => const ThirdPage());
          },
        ),
        const SizedBox(height: 15),
        ColorButton(
          text: 'Others?',
          color: Colors.blue,
          onPressed: () {
            ChoiceManager().secondChoice = 'Anything!';
            Get.to(() => const ThirdPage());
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/secondPage.png', // replace with your image path
                  height: 230.h,
                ),
                const SizedBox(height: 15),
                Text(
                  'What Would You Like?',
                  style: FontStyles.bold(size: 35),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                buildButtons(), // Call the function to build buttons
              ],
            ),
          ),
        ));
  }
}
