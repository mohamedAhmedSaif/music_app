import 'package:flutter/cupertino.dart';
import 'package:music_app/core/resources/routes_manager.dart';

class AppNavigation {
  AppNavigation._();

  static void pushNamed(
    BuildContext context,
    RoutesName routeName, [
    Object? arguments,
  ]) {
    Navigator.of(context).pushNamed(routeName.name, arguments: arguments);
  }

  static void pop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
