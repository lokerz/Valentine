import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../helper/choice_manager.dart';
import '../helper/color_button.dart';
import '../pages/fourth_page.dart';
import '../utils/font_styles.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  // Function to build the buttons
  Widget buildButtons() {
    return Column(
      children: [
        ColorButton(
            text: 'Mall!',
            color: Colors.yellow.shade600,
            onPressed: () {
              ChoiceManager().thirdChoice = 'Mall!';
              Get.to(() => const FourthPage());
            }),
        const SizedBox(height: 15),
        ColorButton(
          text: 'Aquarium!',
          color: Colors.yellow.shade600,
          onPressed: () {
            ChoiceManager().thirdChoice = 'Aquarium!';
            Get.to(() => const FourthPage());
          },
        ),
        const SizedBox(height: 15),
        ColorButton(
          text: 'Zoo!',
          color: Colors.yellow.shade600,
          onPressed: () {
            ChoiceManager().thirdChoice = 'Aquarium!';
            Get.to(() => const FourthPage());
          },
        ),
        const SizedBox(height: 15),
        ColorButton(
          text: 'Others?',
          color: Colors.yellow.shade600,
          onPressed: () {
            ChoiceManager().thirdChoice = 'Anywhere!';
            Get.to(() => const FourthPage());
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[50],
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/thirdPage.png', // replace with your image path
                  height: 150.h,
                ),
                const SizedBox(height: 15),
                Text(
                  'Where Should We Go?',
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
