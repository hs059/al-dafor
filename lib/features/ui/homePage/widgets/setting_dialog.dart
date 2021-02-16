
import 'package:al_dafor/libraries.dart';

import 'package:flutter/material.dart';



class SettingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Dialog(
        elevation: 0,
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 60.h,
                child: Center(
                  child: Text('الاعدادات',style: AppTextStyle.setting1),
                ),
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                ),
              ),
              SwitchListTile(
                value: false,
                title: Row(
                  children: [
                    Icon(
                      Icons.volume_down,
                      color: AppColor.primaryColor,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'الصوت',
                      style:  AppTextStyle.setting2,
                    ),
                  ],
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
              MyDivider(),
              SwitchListTile(
                value: false,
                title: Row(
                  children: [
                    Icon(
                      Icons.vibration,
                      color: AppColor.primaryColor,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'الاهتزاز',
                      style: AppTextStyle.setting2,
                    ),
                  ],
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
              MyDivider(),
              SwitchListTile(
                value: false,
                title: Row(
                  children: [
                    Icon(
                      Icons.music_note,
                      color: AppColor.primaryColor,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'الصوت بالخلفية',
                      style: AppTextStyle.setting2,
                    ),
                  ],
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
              MyDivider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.text_fields,
                      color: AppColor.primaryColor,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'حجم الخط',
                      style: AppTextStyle.setting2,
                    ),
                  ],
                ),
              ),
              MyDivider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.rate_review_outlined,
                      color: AppColor.primaryColor,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'قيم التطبيق',
                      style: AppTextStyle.setting2,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 60.h,

                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                       ),
                child: Center(
                  child: Text('موافق',style: AppTextStyle.setting1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
