


import 'package:al_dafor/libraries.dart';

class StatisticWidgetTop extends StatelessWidget {
  final String userName ,userImage;
  final int arrangement ,points,result;
  StatisticWidgetTop({this.userName, this.arrangement, this.points, this.result, this.userImage= 'assets/images/testUser.png'});
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColor.grayIndicator
                          ),
                          borderRadius: BorderRadius.circular(60.r)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60.r),
                        child: Image.asset(
                          'assets/images/testUser.png',
                          height: 70.h,
                          width: 70.w,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text('مرحباً,$userName',style: AppTextStyle.textStyle3,),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('الترتيب',style: AppTextStyle.textStyle3,),
                    Text('$arrangement',style: AppTextStyle.textStyle3,),
                    SizedBox(
                        height: 2,width: 110.w,
                        child: MyDivider()
                    ),      Text('النقاط',style: AppTextStyle.textStyle3,),
                    Text('$points',style: AppTextStyle.textStyle3,),
                    SizedBox(
                        height: 2,width: 110.w,
                        child: MyDivider()
                    ),
                    Text('النتيجة',style: AppTextStyle.textStyle3,),
                    Text('$result',style: AppTextStyle.textStyle3,),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
