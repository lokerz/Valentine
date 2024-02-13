import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valentine/utils/font_styles.dart';

class ColorButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const ColorButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          textStyle: FontStyles.bold(size: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.w, 15.h, 20.w, 15.h),
        child: Align(
          alignment: Alignment.center,
          child: Text(text),
        ),
      ),
    );
  }
}
