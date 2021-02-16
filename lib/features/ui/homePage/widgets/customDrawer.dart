import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
              ),
              accountName: Text('Hussein J. sarsour'),
              accountEmail: Text('0595271311'),
              currentAccountPicture: Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(60),
              ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                'assets/images/testUser.png',
                height: 80.h,
                      fit: BoxFit.fill,
              ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
