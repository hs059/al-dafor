import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static final TextStyle setting1 =
      GoogleFonts.cairo(color: Colors.white, fontSize: 20);
  static final TextStyle setting2 =
      GoogleFonts.cairo(color: Colors.black45, fontSize: 20);
  static final TextStyle textStyle1 =
      GoogleFonts.cairo(color: AppColor.primaryColor, fontSize: 20);
  static final TextStyle textStyle2 = GoogleFonts.cairo(
      color: AppColor.black, fontSize: 16, fontWeight: FontWeight.bold);
  static final TextStyle textStyle3 = GoogleFonts.cairo(
      color: AppColor.black, fontSize: 16, fontWeight: FontWeight.w500);
  static final TextStyle question = GoogleFonts.cairo(
      color: AppColor.black, fontSize: 20, fontWeight: FontWeight.w400);
}
