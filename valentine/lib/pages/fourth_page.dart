import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../helper/choice_manager.dart';
import '../helper/color_button.dart';
import '../pages/fifth_page.dart';
import '../utils/font_styles.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  // Function to build the buttons
  Widget buildButtons() {
    return Column(
      children: [
        Row(
          children: [
            ColorButton(
                text: 'Pizza!',
                color: Colors.red,
                onPressed: () {
                  ChoiceManager().fourthChoice = 'Pizza!';
                  Get.to(() => const FifthPage());
                }),
            const SizedBox(width: 15),
            ColorButton(
                text: 'Chicken!',
                color: Colors.red,
                onPressed: () {
                  ChoiceManager().fourthChoice = 'Chicken!';
                  Get.to(() => const FifthPage());
                }),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            ColorButton(
                text: 'Ramen!',
                color: Colors.red,
                onPressed: () {
                  ChoiceManager().fourthChoice = 'Ramen!';
                  Get.to(() => const FifthPage());
                }),
            const SizedBox(width: 15),
            ColorButton(
                text: 'Steak!',
                color: Colors.red,
                onPressed: () {
                  ChoiceManager().fourthChoice = 'Steak!';
                  Get.to(() => const FifthPage());
                }),
          ],
        ),
        const SizedBox(height: 15),
        ColorButton(
            text: 'Other?',
            color: Colors.red,
            onPressed: () {
              ChoiceManager().fourthChoice = 'Something Delicious!';
              Get.to(() => const FifthPage());
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[50],
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/fourthPage.png', // replace with your image path
                  height: 215.h,
                ),
                const SizedBox(height: 15),
                Text(
                  'What Should We Eat?',
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
