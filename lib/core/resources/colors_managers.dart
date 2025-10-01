import 'package:flutter/material.dart';

class ColorsManager {
  ColorsManager._();

  static const Color primary1 = Color(0xff411F5C);
  static const Color primary2 = Color(0xff261F5C);
  static const Color shadowColor = Color(0xff3097C5);
  static const Color textFieldColor = Color(0xffB1AFE9);
  static List<Color> screenBackgroundGradient = [
    ColorsManager.primary1,
    ColorsManager.primary2.withValues(alpha: .8),
  ];
  static LinearGradient bodyLinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: ColorsManager.screenBackgroundGradient,
  );
}
