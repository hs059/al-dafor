import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

Widget appBarRace({String title,bool settingBool}) => AppBar(
  backgroundColor: AppColor.background,
  leading: Icon(
    Icons.arrow_back_ios_outlined,
    size: 30,
    color: AppColor.primaryColor,
  ),
  title: Text(
    title,
    style: AppTextStyle.textStyle1,
  ),
  actions: [
    Visibility(
      visible:settingBool ??true ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.settings,
          size: 30,
          color: AppColor.primaryColor,
        ),
      ),
    ),
  ],
);
