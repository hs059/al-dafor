import 'package:al_dafor/features/ui/homePage/widgets/homeButton.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Container(
              child: Image.asset('assets/images/logo-w.png'),
            ),
            Column(
              children: [
                HomeButton(
                  onTap: null,
                  image: 'assets/images/play.png',
                  title: 'سباق المعلومات',
                ),
                HomeButton(
                  onTap: null,
                  image: 'assets/images/battle.png',
                  title: 'سباق المعلومات',
                ),
                HomeButton(
                  onTap: null,
                  image: 'assets/images/challange.png',
                  title: 'سباق المعلومات',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
