import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fuerteads/Pages/SubScription-Plan/subscriptionPlanWeb.dart';
import 'package:fuerteads/screens/homeScreen/homePage.dart';
import 'package:fuerteads/screens/homeScreen/resultPage.dart';
import 'package:fuerteads/utils/app_theme.dart' as app_theme;
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  if (kIsWeb) {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: const FirebaseOptions(apiKey: "AIzaSyA_68RTO8v1aaZm3L1uScwhFjwcAeLKum0", authDomain: "medeasy-829d9.firebaseapp.com", projectId: "medeasy-829d9", storageBucket: "medeasy-829d9.appspot.com", messagingSenderId: "529282502849", appId: "1:529282502849:web:572153277ed36ed5350440", measurementId: "G-PJ4WX3H1X0"),
    );
  } else {
    await Firebase.initializeApp();
  }
  await dotenv.load(fileName: ".env");
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
      home: SubscriptionPlanWeb(),
    );
  }
}
