
import 'package:al_dafor/components/animate_do.dart';
import 'package:al_dafor/value/color.dart';
import 'package:al_dafor/value/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logger/logger.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
class IconBottom extends StatelessWidget {
  final  String image ;
  final  Function onTap ;
  IconBottom({this.image, this.onTap,});
  @override
  Widget build(BuildContext context) {
    return  ZoomIn(
      animate: true,
      delay: Duration(milliseconds: 700),
      child: Container(
          padding: EdgeInsets.all(8),
          child: GestureDetector(
              child: Image.asset(image,
                color: AppColor.primaryColor,
              ),
              onTap:onTap )),
    );
  }
}

