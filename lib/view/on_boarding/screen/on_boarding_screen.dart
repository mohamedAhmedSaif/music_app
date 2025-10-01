import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_app/core/resources/app_navigation.dart';
import 'package:music_app/core/resources/assets_values_manager.dart';
import 'package:music_app/core/resources/colors_managers.dart';
import 'package:music_app/core/resources/routes_manager.dart';

import '../../../core/widgets/app_background.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            OnBoardingBlurBackground(),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 50),
                      OnBoardingTitle(),
                      SizedBox(height: 11),
                      OnBoardingDesc(),
                      SizedBox(height: 10),
                      GetStartedButtonOfOnBoardingPage(),
                    ],
                  ),
                  OnBoardingImage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingBlurBackground extends StatelessWidget {
  const OnBoardingBlurBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: 80, // try 50 first (350 is too strong)
        sigmaY: 80,
      ),
      child: Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.width,
        decoration: ShapeDecoration(
          shape: OvalBorder(),
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [Color(0xff3097C5), Color(0xffB1AFE9)],
          ),
        ),
      ),
    );
  }
}

class OnBoardingDesc extends StatelessWidget {
  const OnBoardingDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 78),
      child: Text(
        textAlign: TextAlign.center,
        "Find Your Latest Favourite Music From Our Collection",
        style: TextStyle(fontSize: 11),
      ),
    );
  }
}

class OnBoardingTitle extends StatelessWidget {
  const OnBoardingTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: "\nMusic",
            style: TextStyle(color: Color(0xff80CFF2)),
          ),
        ],
        text: "Find Your \nFavourite",
      ),
    );
  }
}

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .4,
          width: double.infinity,
        ),
        Positioned(
          bottom: -100,
          child: Stack(
            children: [
              Image.asset(
                AssetValuesManager.onBoardingImage,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                bottom: 100,
                child: Container(
                  height:
                      MediaQuery.of(context).size.height * 0.21,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      end: AlignmentDirectional.topCenter,
                      begin: Alignment.bottomCenter,
                      colors: [
                        ColorsManager.primary1,
                        ColorsManager.shadowColor.withValues(
                          alpha: .04,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GetStartedButtonOfOnBoardingPage extends StatelessWidget {
  const GetStartedButtonOfOnBoardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigation.pushNamed(
          context,
          RoutesName.playMusicRoute,
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 17,
              vertical: 13,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.all(
                Radius.circular(50),
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xff3097C5),
                  Color(0xffffffff),
                ],
              ),
            ),
            child: Text(
              "Get Started",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.all(
                Radius.circular(50),
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xff80CFF2),
                  Color(0xff2F5D9A),
                ],
              ),
            ),
            child: Text(
              "Get Started",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
