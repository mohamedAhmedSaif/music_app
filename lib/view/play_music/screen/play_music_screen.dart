import 'package:flutter/material.dart';
import 'package:music_app/core/resources/app_navigation.dart';
import 'package:music_app/core/resources/assets_values_manager.dart';
import 'package:music_app/core/widgets/app_background.dart';

class PlayMusicScreen extends StatefulWidget {
  const PlayMusicScreen({super.key});

  @override
  State<PlayMusicScreen> createState() => _PlayMusicScreenState();
}

class _PlayMusicScreenState extends State<PlayMusicScreen> {
  double valueSlider = .5;
  late double widthOFAppBarItem;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    widthOFAppBarItem = (MediaQuery.of(context).size.width - 32) / 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 53),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: widthOFAppBarItem * 1,
                    alignment: AlignmentDirectional.centerStart,
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_left_sharp,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                  Container(
                    width: widthOFAppBarItem * 3,
                    alignment: Alignment.center,
                    child: Text(
                      "Now playing",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: widthOFAppBarItem * 1,
                    child: Row(
                      children: [
                        Icon(Icons.share, color: Colors.white, size: 16),
                        SizedBox(width: 21),
                        Icon(Icons.more_vert, color: Colors.white, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 98,
                  left: 76,
                  right: 76,
                  bottom: 23,
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: Image.asset(
                        'assets/images/splash_screen_under_android_12.png',
                        height: 261,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: .05),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("NEW RULES"),
              SizedBox(height: 4),
              Text("Dua Lipa"),
              SliderTheme(
                data: SliderThemeData(
                  thumbSize: WidgetStateMapper({
                    WidgetState.any: Size(0, 0),
                  }),
                  thumbShape: HandleThumbShape(),

                  valueIndicatorColor: Colors.blue,
                ),
                child: Slider(
                  activeColor: Colors.red,
                  value: valueSlider,
                  max: .5,
                  min: .2,
                  onChanged: (value) {
                    valueSlider = value;
                    setState(() {

                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
