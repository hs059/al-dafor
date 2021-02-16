


import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class BtnResultScreen extends StatelessWidget {
  final String title ;
  final Function onTap ;
  BtnResultScreen({this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: sCardShadow,
            borderRadius: BorderRadius.circular(6)),
        child: Text(
          title,
          style: AppTextStyle.textStyle2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
