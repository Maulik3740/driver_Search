import 'package:flutter/material.dart';
import 'package:fuerteads/Pages/SubScription-Plan/subscriptionPlanWeb.dart';
import 'package:fuerteads/screens/homeScreen/homePage.dart';
import 'package:fuerteads/utils/app_theme.dart' as app_theme;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: app_theme.lightThemeData,
      title: 'All Driver Solution ',
      home: HomePage(),
    );
  }
}
