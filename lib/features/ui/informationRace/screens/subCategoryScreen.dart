import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  appBarRace(title:'العلوم'),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: [
                  CustomContainer(
                    height: 60.h,
                    child: Image.asset('assets/images/ic_launcher.png',fit:BoxFit.contain,),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: CustomContainer(
                      height: 60.h,
                      child: Container(
                        child: Text('العلوم' ,style: AppTextStyle.textStyle1,),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
