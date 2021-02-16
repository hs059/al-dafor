

import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double height ;
  final EdgeInsetsGeometry padding;
  CustomContainer({this.child, this.height, this.padding});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 5.h,horizontal: 5.w),
      height: height,
      padding:padding?? EdgeInsets.symmetric(
          horizontal: 5.w,vertical: 5.h),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: sCardShadow,
          borderRadius: BorderRadius.circular(6.r)),
      child: Row(
        children: [
          child,
        ],
      ),
    );
  }
}
