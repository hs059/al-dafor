

import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              )
          ),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: AppColor.primaryColor),
              title: Text(
                'الدافور',
                style: GoogleFonts.cairo(color: AppColor.primaryColor),
              ),
              centerTitle: false,
            ),
            drawer: CustomDrawer(),
            body: Home(),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconBottom(
                                  image: 'assets/images/leaderboard.png',
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                IconBottom(
                                  image: 'assets/images/user.png',
                                ),
                              ]),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconBottom(
                                  onTap: () => showDialog(
                                    context: context,
                                    builder: (context) => SettingDialog(),
                                  ),
                                  image: 'assets/images/setting.png',
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                IconBottom(
                                  image: 'assets/images/logout.png',
                                ),
                              ]),
                        ),
                      ],
                    ))),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              child: Padding(
                padding: EdgeInsets.only(left: 7.w),
                child: Image.asset(
                  'assets/images/play.png',
                  color: AppColor.primaryColor,
                  height: 30.h,
                ),
              ),
              backgroundColor: Colors.white,
              onPressed: null,
            ),
          ),
        ),
      ),
    );
  }
}
