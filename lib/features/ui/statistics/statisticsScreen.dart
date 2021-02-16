import 'package:al_dafor/features/ui/statistics/widgets/statisticWidgetTop.dart';
import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

import 'widgets/statisticWidgetBottom.dart';

class StatisticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarRace(settingBool: false, title: 'إحصائيات المستخدم'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: ListView(
          children: [
            StatisticWidgetTop(
              userName: 'حسين صرصور',
              arrangement: 0,
              points: 0,
              result: 0,
            ),
            StatisticWidgetBottom(
              incorrect: 15,
              correct: 5,
              total: 20,
            ),
          ],
        ),
      ),
    );
  }
}
