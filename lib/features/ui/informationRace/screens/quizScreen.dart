import 'package:al_dafor/features/ui/informationRace/widgets/raceTime.dart';
import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          size: 30,
          color: AppColor.primaryColor,
        ),
        title: Text(
          'مستوى : 1',
          style: AppTextStyle.textStyle1,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.bookmark_outline,
              size: 30,
              color: AppColor.primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.settings,
              size: 30,
              color: AppColor.primaryColor,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.white,
            height: AppBar().preferredSize.height,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('0'),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset('assets/images/rank.png'),
                      ),
                    ],
                  ),
                  RaceTime(),
                  Row(
                    children: [
                      Text('0'),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset('assets/images/coins.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              CustomLinearProgress(
                color: Colors.greenAccent,
                currentValue: 15,
                totalValue: 20,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  height: 250,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 45.h),
                        color: Colors.white,
                        child: Container(
                          child: Text(
                            'تنسب الميكانيكا الكلاسيكية عادة الى',
                            style:AppTextStyle.question,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: AppColor.grayBorder,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(5)),
                          ),
                          child: Icon(Icons.mic),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 30.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(5)),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomLinearProgress(
                color: Colors.redAccent,
                currentValue: 15,
                totalValue: 20,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: ListView.builder(
              primary: false,
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
               List abjd = ['أ','ب','ج','د'] ;
               return CustomContainer(
                  height: 60.h,
                  child: Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 35,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            abjd[index],
                            textAlign: TextAlign.center,
                            style: AppTextStyle.textStyle2
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          'جاليلو',
                          style:AppTextStyle.question,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 50.0,
          width: 100,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconBottom(
                image: 'assets/images/resettime.png',
              ),
              IconBottom(
                image: 'assets/images/audiencepool.png',
              ),
              IconBottom(
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => SettingDialog(),
                ),
                image: 'assets/images/skip.png',
              ),
              IconBottom(
                image: 'assets/images/fiftyfifty.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
