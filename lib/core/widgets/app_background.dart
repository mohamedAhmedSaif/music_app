import 'package:flutter/material.dart';

import '../resources/colors_managers.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(gradient: ColorsManager.bodyLinearGradient),

      child: child,
    );
  }
}
