

import 'package:al_dafor/libraries.dart';

class CustomImageIcon extends StatelessWidget {
  final double width ;
  final EdgeInsetsGeometry padding ;
  final String imageName ;
  CustomImageIcon({this.width, this.padding,@required this.imageName});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  padding??EdgeInsets.symmetric(horizontal: 5.w),
      child: Image.asset('assets/images/$imageName.png',width:width?? 30.w,),
    );
  }
}
