
import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
final  String image,title ;
 final Function onTap ;
  HomeButton({this.image, this.onTap, this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () =>onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 70.w,vertical: 10.h),
        height: 50.h,
        decoration: BoxDecoration(
            shape:BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(60),
            boxShadow: sCardShadow
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title,style: TextStyle(fontSize: 20,color: AppColor.primaryText,fontWeight: FontWeight.w400),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image,color: AppColor.primaryColor,),
            ),
          ],
        ),
      ),
    );
  }
}
