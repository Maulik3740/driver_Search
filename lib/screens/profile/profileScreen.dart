import 'package:flutter/material.dart';
import 'package:fuerteads/values/screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Screen s = Screen(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      // backgroundColor: Color(0xfff7f7fc),
      backgroundColor: Colors.blueGrey.shade50,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1, vertical: size.height * 0.14),
            child: Container(
              height: size.height * 0.7,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: Color(0xfff7f7fc),
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1, vertical: size.height * 0.14),
            child: Container(
              height: size.height * 0.7,
              width: size.width * 0.16,
              decoration: BoxDecoration(
                  color: Color(0xff0664e7),
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.16, vertical: size.height * 0.23),
            child: Container(
              height: size.height * 0.5,
              width: size.width * 0.65,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(25)),
            ),
          ),
        ],
      ),
    );
  }
}
