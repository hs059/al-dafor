


import 'package:al_dafor/features/ui/splash.dart';
import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/ui/informationRace/screens/levelsScreen.dart';
import 'features/ui/informationRace/screens/quizScreen.dart';
import 'features/ui/informationRace/screens/resultScreen.dart';
import 'features/ui/informationRace/screens/subCategoryScreen.dart';
import 'features/ui/statistics/statisticsScreen.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      allowFontScaling: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("en", "US"),
          Locale('ar', 'AE') ,
        ],
        theme: ThemeData(
          scaffoldBackgroundColor: AppColor.background,
          textTheme: GoogleFonts.cairoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: StatisticsScreen(),
      ),
    );
  }
}
