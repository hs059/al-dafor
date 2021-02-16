


import 'package:al_dafor/libraries.dart';

import 'customImageIcon.dart';

class ResultsRace extends StatelessWidget {
  final double correct ,incorrect ,percent  ,coins ,rank ;
  ResultsRace({this.correct, this.incorrect, this.percent , this.coins, this.rank});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      margin: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
      decoration: BoxDecoration(
          color: Color(0xffe2ffe3),
          boxShadow: sCardShadow
      ),
      child: Column(
        children: [
          Text('تهانينا !! لقد أنهيت المستوى بنجاح',style: AppTextStyle.textStyle2,),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('${coins??0}',style: AppTextStyle.textStyle2,),
                      CustomImageIcon(imageName: 'coins',),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text('${rank??0}',style: AppTextStyle.textStyle2,),

                      CustomImageIcon(imageName: 'rank',),
                    ],
                  ),

                ],
              ),
              SizedBox(
                width: 20.w,
              ),
              CircularPercentIndicator(
                radius: 90.0,
                lineWidth: 8.0,
                percent: 0.5,
                circularStrokeCap: CircularStrokeCap.round,

                center: Text('${percent??0}%',style: AppTextStyle.textStyle2.copyWith(color: AppColor.blueProgress,fontSize: 20.ssp)),
                progressColor: Color(0xff326b86),
              ),
              SizedBox(
                width: 20.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('${correct??0}',style: AppTextStyle.textStyle2,),
                      CustomImageIcon(imageName: 'correct',),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text('${incorrect??0}',style: AppTextStyle.textStyle2,),
                      CustomImageIcon(imageName: 'incorrect',),
                    ],
                  ),

                ],
              ),

            ],
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
