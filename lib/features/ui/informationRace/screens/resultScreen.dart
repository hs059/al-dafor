import 'package:al_dafor/features/ui/informationRace/widgets/btnResultScreen.dart';
import 'package:al_dafor/features/ui/informationRace/widgets/customImageIcon.dart';
import 'package:al_dafor/features/ui/informationRace/widgets/resultsRace.dart';
import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarRace(title: 'انتقل الى المستوى التالي',settingBool: false),
      body: ListView(
        children: [
          Container(
            decoration:
                BoxDecoration(color: Colors.white, boxShadow: sCardShadow),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/rank.png',
                        width: 30,
                      ),
                      Text(
                        'النتيجة النهائية',
                        style: AppTextStyle.textStyle2,
                      ),
                      Text(
                        '0',
                        style: AppTextStyle.textStyle2,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/coins.png',
                        width: 30,
                      ),
                      Text(
                        'عدد النقاط النهائية',
                        style: AppTextStyle.textStyle2,
                      ),
                      Text(
                        '0',
                        style: AppTextStyle.textStyle2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ResultsRace(
            coins: 20,
            correct: 30,
            incorrect: 20,
            percent: 10,
            rank: 20,
          ),
          BtnResultScreen(title: 'انتقل الى المستوى التالي',),
          BtnResultScreen(title: 'مراجعة الاجابات',),
          BtnResultScreen(title: 'شارك نتيجتك',),
          BtnResultScreen(title: 'قيم التطبيق',),
          BtnResultScreen(title: 'الصفحة الرئيسية',),
        ],
      ),
    );
  }
}
