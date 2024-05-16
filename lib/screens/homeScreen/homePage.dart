import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuerteads/screens/homeScreen/resultPage.dart';
import 'package:fuerteads/utils/homeUtiles.dart';
import 'package:fuerteads/values/screen.dart';
import 'package:fuerteads/values/values.dart';
import 'package:fuerteads/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../responsive.dart' as res;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? data;

  @override
  void initState() {
    super.initState();
    fetchDataFromFirebase();
  }

  Future<void> fetchDataFromFirebase() async {
    try {
      // Fetch data from Firebase
      DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance.collection('Users').doc('1234567899').get();

      // Extract data from snapshot
      Map<String, dynamic> dataMap = snapshot.data() ?? {};

      // Get the value you want to display
      String? fetchedData = dataMap['Username'];

      setState(() {
        data = fetchedData;
        print("object..................$data");
      });
    } catch (error) {
      print('Error fetching data: $error');
      // Handle errors here
    }
  }

  TextEditingController _locationController = TextEditingController();
  // String _selectedExperience = '';
  List<String> _experiences = [
    'Driver',
    'Vehicle Owner',
    'Spare Parts',
    'RTO Agent'
  ];
  String? _selectedExperience;

  startLaunchURL(String url) async {
    // const url = 'https://flutter.dev';

    var urllaunchable = await canLaunchUrl(Uri.parse(url)); //canLaunch is from url_launcher package
    if (urllaunchable) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication); //launch is from url_launcher package to launch URL
    } else {
      print("URL can't be launched.");
    }
  }

  List<Color> myColor = [
    Color(0xff9897A9),
    Color(0xff9897A9),
    Color(0xffC5C6D0),
    Color(0xff7F7D9C),
  ];

  List<String> sliderTexts = [
    "Find your driver",
    "Discover new opportunities",
    "Explore Vehicle Owners",
    "Explore RTOs near you",
  ];

  List<String> sliderSubTexts = [
    "Discover over 100,000 drivers",
    "Find the perfect driver for your needs",
    "Locate vehicle owners in your area",
    "Find RTO agents near your location",
  ];

  @override
  Widget build(BuildContext context) {
    Screen s = Screen(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Color(0xfff4f9fe),
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
                    Text(
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
                      startLaunchURL("https://play.google.com/store/apps/details?id=com.avd.driverapp&hl=en_IN&gl=US");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        width: 370 * s.customWidth,
                        height: 40,
                        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "Download",
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 400,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 41, 255, 120),
                            Colors.yellow,
                            Colors.amberAccent,
                          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Stack(
                          children: [
                            generatePositionedCircle(
                              left: 35,
                              top: 15,
                              radius: 25,
                              imagePath: 'assets/8.png',
                            ),
                            generatePositionedCircle(
                              left: 90,
                              top: 85,
                              radius: 45,
                              imagePath: 'assets/8.png',
                            ),
                            generatePositionedCircle(
                              left: 200,
                              top: 12,
                              radius: 33,
                              imagePath: 'assets/8.png',
                            ),
                            generatePositionedCircle(
                              left: 300,
                              top: 80,
                              radius: 65,
                              imagePath: 'assets/5.png',
                            ),
                            generatePositionedCircle(
                              left: 450,
                              top: 10,
                              radius: 32,
                              imagePath: 'assets/8.png',
                            ),
                            generatePositionedCircle(
                              left: 520,
                              top: 100,
                              radius: 28,
                              imagePath: 'assets/8.png',
                            ),
                            generatePositionedCircle(
                              left: 620,
                              top: 15,
                              radius: 45,
                              imagePath: 'assets/8.png',
                            ),
                            generatePositionedCircle(
                              left: 760,
                              top: 100,
                              radius: 50,
                              imagePath: 'assets/8.png',
                            ),
                            generatePositionedCircle(
                              left: 880,
                              top: 15,
                              radius: 35,
                              imagePath: 'assets/8.png',
                            ),
                            Positioned(
                              top: 220,
                              left: MediaQuery.of(context).size.width / 5,
                              child: Text(
                                "Search For your next job",
                                style: GoogleFonts.poppins(fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Positioned(
                              top: 260,
                              left: MediaQuery.of(context).size.width / 6,
                              child: Text(
                                "When you are searching for a job, there are a few things you can do to",
                                style: GoogleFonts.poppins(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Positioned(
                              top: 275,
                              left: MediaQuery.of(context).size.width / 4,
                              child: Text(
                                "get the most out of your search ",
                                style: GoogleFonts.poppins(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ).py20(),

                      // Job Search Bar
                      Positioned(
                        bottom: 0,
                        left: s.width / 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 55,
                              width: MediaQuery.of(context).size.width / 1.9,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 6,
                                      offset: Offset(0, 4),
                                      color: Colors.grey.shade400,
                                    )
                                  ],
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.horizontal(left: Radius.circular(50.0), right: Radius.circular(50.0))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10 * s.customWidth),
                                    child: CircleAvatar(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Color.fromRGBO(0, 208, 101, 1),
                                      child: Icon(
                                        Icons.search,
                                        size: 20.0,
                                      ),
                                      radius: 19,
                                    ),
                                  ),
                                  Expanded(
                                    child: Theme(
                                      data: ThemeData(focusColor: Colors.amber, splashColor: Colors.transparent),
                                      child: DropdownButtonFormField<String>(
                                        value: _selectedExperience,
                                        borderRadius: BorderRadius.circular(10),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectedExperience = newValue;
                                          });
                                        },
                                        items: _experiences
                                            .map<DropdownMenuItem<String>>(
                                              (String value) => DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            )
                                            .toList(),
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          focusColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          border: OutlineInputBorder(
                                            borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          hintText: 'Enter skills / designation / companies',
                                          hintStyle: GoogleFonts.lato(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        style: GoogleFonts.lato(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30 * s.customHeight,
                                    child: VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 2,
                                    ),
                                  ),
                                  Container(
                                      height: 40 * s.customHeight,
                                      width: 170 * s.customWidth,
                                      child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 3 * s.customHeight),
                                          child: TextField(
                                            controller: _locationController,
                                            cursorColor: Colors.black,
                                            showCursor: true,
                                            decoration: InputDecoration(
                                              // filled: true,
                                              fillColor: Colors.white,
                                              focusColor: Colors.white,
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              hintText: 'Enter Location',
                                              hintStyle: GoogleFonts.lato(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            style: GoogleFonts.lato(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      )),
                                  InkWell(
                                    onTap: () {
                                      print("object..........................................${_selectedExperience} , ${_locationController.text}");
                                      if (_selectedExperience != null && _locationController.text.isNotEmpty) {
                                        Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => ResultPage(
                                                  experience: _selectedExperience.toString(),
                                                  location: _locationController.text,
                                                )));
                                      } else {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            duration: Duration(milliseconds: 500),
                                            content: Text('Please fill in all fields before searching.'),
                                          ),
                                        );
                                      }
                                    },
                                    child: Container(
                                      height: 40 * s.customHeight,
                                      width: 110 * s.customWidth,
                                      decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          "Search",
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ).px16()
                                ],
                              ).px8(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60 * s.customHeight,
            ),
            CarouselSlider(
              items: sliderTexts.map((text) {
                int index = sliderTexts.indexOf(text);
                return Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    color: myColor[index],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          text,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(height: 10 * s.customHeight),
                        AutoSizeText(
                          sliderSubTexts[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 150 * s.customHeight, // Adjust height as needed
                enableInfiniteScroll: true, // Allows infinite scrolling
                autoPlay: true, // Automatically scroll items
                autoPlayInterval: Duration(seconds: 3), // Set auto-play interval
                autoPlayAnimationDuration: Duration(milliseconds: 800), // Animation duration
                autoPlayCurve: Curves.fastOutSlowIn, // Animation curve
                // enlargeCenterPage: true, // Enlarge the centered item
                scrollDirection: Axis.horizontal, // Set scroll direction
              ),
            ),
            SizedBox(
              height: 60 * s.customHeight,
            ),
            CarouselSlider(
              items: sliderTexts.map((text) {
                int index = sliderTexts.indexOf(text);
                return Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    color: myColor[index],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          text,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(height: 10 * s.customHeight),
                        AutoSizeText(
                          sliderSubTexts[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 150 * s.customHeight, // Adjust height as needed
                enableInfiniteScroll: true, // Allows infinite scrolling
                autoPlay: true, // Automatically scroll items
                autoPlayInterval: Duration(seconds: 3), // Set auto-play interval
                autoPlayAnimationDuration: Duration(milliseconds: 800), // Animation duration
                autoPlayCurve: Curves.fastOutSlowIn, // Animation curve
                // enlargeCenterPage: true, // Enlarge the centered item
                scrollDirection: Axis.horizontal, // Set scroll direction
              ),
            ),
            SizedBox(
              height: 60 * s.customHeight,
            ),
          ],
        ),
      ),
    );
  }

  Widget generatePositionedCircle({
    required double left,
    required double top,
    required double radius,
    required String imagePath,
  }) {
    return Positioned(
      left: left,
      top: top,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: radius,
        child: ClipOval(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
