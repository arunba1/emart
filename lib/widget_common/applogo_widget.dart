import 'package:e_mart/consts.dart';

Widget applogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(80, 80)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
