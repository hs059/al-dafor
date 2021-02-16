import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class LevelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarRace(title: 'اختر المستوى'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) => CustomContainer(
            height: 80.h,
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LockWidget(locked:index ==0?false:true,),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    'مستوى: ${index+1}',
                    style: AppTextStyle.textStyle2,
                  ),
                  Expanded(child: Container(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                      color: AppColor.primaryColor,
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
