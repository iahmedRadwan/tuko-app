import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/utilities/app_router.dart';
import 'package:tuko_app/views/home_view/home_view.dart';
import 'utilities/app_colors.dart';

void main() {
  AudioCache.instance = AudioCache(prefix: '');
  runApp(const TukoApp());
}

class TukoApp extends StatelessWidget {
  const TukoApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kYellowColor,
      ),
      routes: appRouter,
      initialRoute: HomeView.routeName,
    );
  }
}
