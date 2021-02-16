import 'package:al_dafor/libraries.dart';

class LockWidget extends StatelessWidget {
  final bool locked;

  LockWidget({this.locked = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColor.grayBorder
      ),
      child: Image.asset('assets/images/${locked ? 'lock':'unlock'}.png',color: AppColor.primaryColor,),
    );
  }
}
