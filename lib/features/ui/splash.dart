

import 'package:al_dafor/components/animate_do.dart';
import 'package:al_dafor/value/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'homePage/screens/homePage.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {

    var delay = Duration(seconds: 3);
    Future.delayed(delay, () {
      kNavigatorPushReplacement(context,HomePage());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: JelloIn(
        duration: Duration(milliseconds: 1500),
        animate: true,
        child: Center(
          child: Image.asset('assets/images/logo.png',height: 200.h,width: 200.w,),
        ),
      ),
    );
  }
}

