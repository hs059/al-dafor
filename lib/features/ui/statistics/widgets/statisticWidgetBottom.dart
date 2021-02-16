


import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class StatisticWidgetBottom extends StatelessWidget {
  final int total ,correct,incorrect;
  double correctPercent ;
  double incorrectPercent ;
  StatisticWidgetBottom({this.total, this.correct, this.incorrect});
  @override
  Widget build(BuildContext context) {
    correctPercent = correct*100/total;
    incorrectPercent = incorrect*100/total;
    return CustomContainer(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الأسئلة المشاهدة',
                          style: AppTextStyle.textStyle3
                              .copyWith(color: AppColor.grayText),
                        ),
                        Text(
                          '$total',
                          style: AppTextStyle.textStyle3,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'الاجوبة الصحيحة',
                          style: AppTextStyle.textStyle3
                              .copyWith(color: AppColor.grayText),
                        ),
                        Text(
                          '$correct',
                          style: AppTextStyle.textStyle3,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'خطأة',
                          style: AppTextStyle.textStyle3
                              .copyWith(color: AppColor.grayText),
                        ),
                        Text(
                          '$incorrect',
                          style: AppTextStyle.textStyle3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      color: Colors.green,
                      width: 2,
                      height: 60.h,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      color: AppColor.green,
                      width: 2,
                      height: 60.h,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      color: AppColor.red,
                      width: 2,
                      height: 60.h,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CircularPercentIndicator(
                    radius: 120.0,
                    lineWidth: 25,
                    animation: true,
                    progressColor:AppColor.green,
                    backgroundColor: AppColor.red,
                    percent: correctPercent/100,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text('${incorrectPercent.toStringAsFixed(2)}%'),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff3cd968),
                          shape: BoxShape.circle,
                        ),
                        height: 10.h,
                        width: 10.w,
                      ),
                      SizedBox(width: 10.w,),
                      Container(
                        child: Text('${correctPercent.toStringAsFixed(2)}%'),
                      ),

                      SizedBox(width: 5.w,),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        height: 10.h,
                        width: 10.w,
                      ),

                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
