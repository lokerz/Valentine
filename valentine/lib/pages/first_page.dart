import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';
import 'package:get/get.dart';

import '../helper/color_button.dart';
import '../pages/second_page.dart';
import '../utils/font_styles.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  var isNoPressed = false.obs;

  // Function to build the buttons
  Widget buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorButton(
            text: 'Yeeeeeees!',
            color: Colors.pink,
            onPressed: () {
              Get.to(() => const SecondPage());
            }),
        const SizedBox(width: 15),
        Obx(() => ShakeWidget(
            shakeConstant: ShakeCrazyConstant2(),
            autoPlay: isNoPressed.value,
            child: ColorButton(
              text: 'No',
              color: Colors.pink,
              onPressed: () {
                isNoPressed.value = !isNoPressed.value;
              },
            )))
      ],
    );
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
                  'assets/firstPage.png', // replace with your image path
                  height: 150.h,
                ),
                const SizedBox(height: 15),
                Text(
                  'Would You Be My Valentine?',
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
