import 'package:flutter/material.dart';
import 'package:music_app/view/home/screen/home_page.dart';
import 'package:music_app/view/on_boarding/screen/on_boarding_screen.dart';
import 'package:music_app/view/play_music/screen/play_music_screen.dart';

import '../screens/un_known_route.dart';

class RoutesManager {
  RoutesManager._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget page;
    if (settings.name == RoutesName.onBoardingRoute.name) {
      page = OnBoardingScreen();
    } else if (settings.name == RoutesName.homeRoute.name) {
      page = HomePage();
    } else if (settings.name == RoutesName.playMusicRoute.name) {
      page = PlayMusicScreen();
    } else {
      page = UnKnownRoute();
    }
    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }
}

enum RoutesName {
  onBoardingRoute("/"),
  homeRoute("/home"),
  playMusicRoute("/playMusic");

  final String name;

  const RoutesName(this.name);
}
