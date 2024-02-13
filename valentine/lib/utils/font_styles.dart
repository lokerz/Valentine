import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontStyles {
  static TextStyle regular({double size = 14, Color color = Colors.black87}) {
    return TextStyle(
      fontSize: size.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      color: color,
      height: 1,
    );
  }

  static TextStyle medium({double size = 14, Color color = Colors.black87}) {
    return TextStyle(
      fontSize: size.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      color: color,
      height: 1,
    );
  }

  static TextStyle bold({double size = 14, Color color = Colors.black87}) {
    return TextStyle(
      fontSize: size.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      color: color,
      height: 1,
    );
  }
}
