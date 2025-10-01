import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_values_manager.dart';
import 'package:music_app/core/resources/colors_managers.dart';
import 'package:music_app/core/widgets/app_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  hintText: "Search Song",
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: ColorsManager.textFieldColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0),
              child: Text(
                "Recently Played",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 22),
            Container(
              height: 200,
              child: ListView.separated(
                itemBuilder: (context, index) => Container(
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AssetValuesManager.onBoardingImage,
                        width: 151,
                        height: 151,
                      ),
                      Text("Song Name"),
                      Text("Artist Name"),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(width: 17),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
