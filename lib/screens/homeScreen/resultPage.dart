import 'package:flutter/material.dart';
import 'package:fuerteads/Pages/SubScription-Plan/sp.dart';
import 'package:fuerteads/values/screen.dart';
import 'package:fuerteads/values/values.dart';
import 'package:fuerteads/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../responsive.dart' as res;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  startLaunchURL(String url) async {
    // const url = 'https://flutter.dev';

    var urllaunchable = await canLaunchUrl(
        Uri.parse(url)); //canLaunch is from url_launcher package
    if (urllaunchable) {
      await launchUrl(Uri.parse(url),
          mode: LaunchMode
              .externalApplication); //launch is from url_launcher package to launch URL
    } else {
      print("URL can't be launched.");
    }
  }

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Screen s = Screen(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // backgroundColor: Color(0xfff4f9fe),
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0 * s.customHeight),
        child: s.isDesktop
            ? Center(
                child: const NavBar(),
              )
            : AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white54,
                scrolledUnderElevation: 0,
                title: Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(
                        ImagePath.adsLogo,
                      ),
                    ),
                    SizedBox(
                      width: 20 * s.customWidth,
                    ),
                    AutoSizeText(
                      "All Driver Solution",
                      style: GoogleFonts.play(
                          // color: Color(0xff7CB9E8),
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                actions: [
                  GestureDetector(
                    onTap: () {
                      startLaunchURL(
                          "https://play.google.com/store/apps/details?id=com.avd.driverapp&hl=en_IN&gl=US");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        width: 370 * s.customWidth,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: AutoSizeText(
                            "Download",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20 * s.customHeight,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20 * s.customWidth),
            child: Container(
              height: size.height * 0.1,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20 * s.customWidth, right: 5 * s.customWidth),
                    child: FaIcon(Icons.search_outlined),
                  ),
                  AutoSizeText(
                    "Driving Jobs",
                    style: GoogleFonts.aBeeZee(fontSize: 15, color: black),
                  ),
                  SizedBox(
                    width: 20 * s.customWidth,
                  ),
                  SizedBox(
                    height: 30 * s.customHeight,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    width: 40 * s.customWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(
                      // Icons.location_city_outlined,
                      // color: red,
                      Icons.bus_alert,
                      color: red,
                    ),
                  ),
                  AutoSizeText(
                    "Morbi, Gujarat",
                    style: GoogleFonts.aBeeZee(fontSize: 15, color: black),
                  ),
                  SizedBox(
                    width: 40 * s.customWidth,
                  ),
                  SizedBox(
                    height: 30 * s.customHeight,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    width: 40 * s.customWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(
                      Icons.work_history,
                      color: green,
                    ),
                  ),
                  AutoSizeText(
                    "2+ Years Of Experience",
                    style: GoogleFonts.aBeeZee(fontSize: 15, color: black),
                  ),
                  SizedBox(
                    width: 40 * s.customWidth,
                  ),
                  SizedBox(
                    height: 30 * s.customHeight,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    width: 40 * s.customWidth,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          AutoSizeText(
                            "Salary Range(Month)",
                            style:
                                GoogleFonts.aBeeZee(fontSize: 15, color: black),
                          ),
                          SizedBox(
                            width: 10 * s.customWidth,
                          ),
                          AutoSizeText(
                            "₹10000 - 20000",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 15,
                                color: black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SfSlider(
                        min: 0,
                        max: 100000,
                        value: _value,
                        // interval: 20,
                        showTicks: true,
                        showLabels: true,
                        enableTooltip: true,
                        minorTicksPerInterval: 1,
                        onChanged: (dynamic value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 10 * s.customWidth,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20 * s.customWidth),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ResultPage()));
                      },
                      child: Container(
                        height: 42 * s.customHeight,
                        width: 100 * s.customWidth,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.search_sharp,
                                size: 15,
                              ),
                            ),
                            AutoSizeText(
                              "Search",
                              style: GoogleFonts.aBeeZee(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50 * s.customHeight,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20 * s.customWidth),
            child: Row(
              children: [
                AutoSizeText(
                  "Filters",
                  style: GoogleFonts.aBeeZee(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(
                  width: 110 * s.customWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: AutoSizeText(
                    "Clear All",
                    style: GoogleFonts.aBeeZee(
                        color: grey, fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: 20 * s.customWidth,
                ),
                AutoSizeText(
                  "Driving Jobs",
                  style: GoogleFonts.aBeeZee(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(
                  width: 10 * s.customWidth,
                ),
                AutoSizeText(
                  "Search Result (05)",
                  style: GoogleFonts.aBeeZee(
                      color: grey, fontWeight: FontWeight.bold, fontSize: 19),
                ),
                Expanded(
                  child: SizedBox(
                    width: 160 * s.customWidth,
                  ),
                ),
                Container(
                    height: 35 * s.customHeight,
                    width: 120 * s.customWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade200)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AutoSizeText(
                          "Popular",
                          style: GoogleFonts.aBeeZee(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10 * s.customHeight,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20 * s.customWidth),
                child: Container(
                  width: 230 * s.customWidth,
                  height: 500 * s.customHeight,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade200)),
                ),
              ),
              // GridView.builder(
              //   itemCount:
              //       3, // Replace 'itemCount' with your actual item count
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount:
              //         2, // You can change the cross axis count as needed
              //     crossAxisSpacing: 10.0,
              //     mainAxisSpacing: 10.0,
              //   ),
              //   itemBuilder: (BuildContext context, int index) {
              //     return driverImage(); // Call your driverImage function here
              //   },
              // )
              buildWrap()
            ],
          ),
        ],
      ),
    );
  }

  Widget buildWrap() {
    return Wrap(
      spacing: 10.0, // Adjust the spacing between items as needed
      runSpacing: 10.0, // Adjust the run spacing as needed
      runAlignment: WrapAlignment.start,
      children: List.generate(
        5, // Replace 'itemCount' with the actual item count
        (index) => driverImage(),
      ),
    );
  }

  Widget driverImage() {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    Screen s = Screen(context);
    return Container(
      height: h * 0.28,
      width: w * 0.15,
      decoration: BoxDecoration(
          color: Colors.blue.shade200, borderRadius: BorderRadius.circular(2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: h * 0.015,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.01 * w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person_2_outlined),
                ),
                SizedBox(
                  width: w * 0.08,
                ),
                Icon(
                  Icons.bookmark_outline,
                  color: black,
                  size: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w * 0.01, top: h * 0.02),
            child: AutoSizeText(
              "Zeeshan",
              style: GoogleFonts.aBeeZee(
                  color: black, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: w * 0.01,
            ),
            child: AutoSizeText(
              "+91- 987654****",
              style: GoogleFonts.aBeeZee(
                  color: black, fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: w * 0.01,
            ),
            child: AutoSizeText(
              "Junagadh, Gujarat",
              style: GoogleFonts.aBeeZee(
                  color: black, fontWeight: FontWeight.w500, fontSize: 12),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: w * 0.01,
            ),
            child: AutoSizeText(
              "7 Years Experience",
              style: GoogleFonts.aBeeZee(color: black, fontSize: 12),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: w * 0.01,
            ),
            child: AutoSizeText(
              "Truck",
              style: GoogleFonts.aBeeZee(color: black, fontSize: 12),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SubscriptionPlan()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 42 * s.customHeight,
                width: 150 * s.customWidth,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.album,
                        size: 15,
                        color: black,
                      ),
                    ),
                    AutoSizeText(
                      "View Details",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
