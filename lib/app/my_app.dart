import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RoutesManager.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
