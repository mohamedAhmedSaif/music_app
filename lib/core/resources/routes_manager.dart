import 'package:flutter/material.dart';
import 'package:music_app/view/home/screen/home_page.dart';
import 'package:music_app/view/on_boarding/screen/on_boarding_screen.dart';
import 'package:music_app/view/play_music/screen/play_music_screen.dart';

import '../screens/un_known_route.dart';

class RoutesManager {
  RoutesManager._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget page;

    switch (settings.name) {
      case RoutesName.onBoardingRoute:
        page = OnBoardingScreen();
      case RoutesName.homeRoute:
        page = HomePage();
      case RoutesName.playMusicRoute:
        page = PlayMusicScreen();

      default:
        page = UnKnownRoute();
    }
    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }
}

class RoutesName {
  RoutesName._();

  static const String onBoardingRoute = "/";
  static const String homeRoute = "/home";
  static const String playMusicRoute = "/playMusic";
}
