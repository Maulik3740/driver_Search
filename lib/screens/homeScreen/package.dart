import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fuerteads/values/screen.dart';
import 'package:fuerteads/values/values.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class PackagePage extends StatefulWidget {
  const PackagePage({super.key});

  @override
  State<PackagePage> createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Screen s = Screen(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 40 * s.customWidth, vertical: 40 * s.customHeight),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orange.shade100,
                  child: CircleAvatar(
                    backgroundColor: Colors.orange.shade50,
                    radius: 20,
                    child: Icon(
                      Icons.redeem_rounded,
                      color: Colors.amber.shade400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20 * s.customWidth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Subscription Plan",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 27,
                            color: black,
                            fontWeight: FontWeight.bold),
                      ),
                      AutoSizeText(
                        "Unlock instant access to all user details",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 13,
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade200,
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 40 * s.customWidth, vertical: 40 * s.customHeight),
            child: Row(
              children: [
                Expanded(
                  child: AutoSizeText(
                    "Choose Plan",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        color: black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: AutoSizeText(
                    "Fill Your Details",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        color: black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    planDetails("Pro Plan", 1000, "10 details", "10 times"),
                    SizedBox(
                      height: 50 * s.customHeight,
                    ),
                    planDetails("Team Plan", 5000, "10 details", "unlimited"),
                    SizedBox(
                      height: 50 * s.customHeight,
                    ),
                    planDetails("Business Pro", 10, "assistance", "unlimited"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget planDetails(
      String planName, int amount, String planFor, String numberOfUser) {
    Screen s = Screen(context);
    return Container(
      height: 100 * s.customHeight,
      width: 440 * s.customWidth,
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade50,
          border: Border.all(color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 9,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              radius: 4,
              backgroundColor: Colors.white,
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  planName,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 17, color: black, fontWeight: FontWeight.bold),
                ),
                AutoSizeText(
                  planFor,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 13, color: grey, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  amount.toString(),
                  style: GoogleFonts.aBeeZee(
                      fontSize: 17, color: black, fontWeight: FontWeight.bold),
                ),
                AutoSizeText(
                  numberOfUser,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 13, color: grey, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
