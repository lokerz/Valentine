import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:valentine/pages/first_page.dart';

import '../helper/color_button.dart';
import '../utils/font_styles.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

  // Function to build the buttons
  Widget buildButtons() {
    return ColorButton(
        text: 'I Love You Too!',
        color: Colors.pink,
        onPressed: () {
          Get.offAll(() => FirstPage());
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/sixthPage.png', // replace with your image path
                  height: 250.h,
                ),
                const SizedBox(height: 15),
                Text(
                  'I Love You So Much!',
                  style: FontStyles.bold(size: 35, color: Colors.pink),
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
