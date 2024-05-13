import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuerteads/screens/homeScreen/resultPage.dart';
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
  TextEditingController _experienceController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  // String _selectedExperience = '';
  List<String> _experiences = [
    'Driver',
    'Vehicle Owner',
    'Spare Parts',
    'RTO Agent'
  ];
  String? _selectedExperience;

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

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
    // Add more text strings as needed
  ];

  List<String> sliderSubTexts = [
    "Discover over 100,000 drivers",
    "Find the perfect driver for your needs",
    "Locate vehicle owners in your area",
    "Find RTO agents near your location",
    // Add more subtext strings as needed
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
      body: Column(
        children: [
          SizedBox(
            height: 100 * s.customHeight,
          ),
          // Align(
          //   alignment: Alignment.center,
          //   child: Text(
          //     "Find your driving job now",
          //     style: GoogleFonts.roboto(
          //         color: Colors.black,
          //         fontWeight: FontWeight.bold,
          //         fontSize: 40),
          //   ),
          // ),
          // SizedBox(
          //   height: 10 * s.customHeight,
          // ),
          // Text(
          //   "1 lakh+ driving jobs for you to explore",
          //   style: TextStyle(
          //       color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          // ),
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
            height: 20 * s.customHeight,
          ),
          Container(
            height: 75 * s.customHeight,
            width: 765 * s.customWidth,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20 * s.customWidth, right: 10 * s.customWidth),
                  child: Icon(Icons.search_rounded),
                ),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _selectedExperience,
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
                      hintText: 'Select Experience',
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30 * s.customHeight,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                // PopupMenuButton<String>(
                //   // color: Colors.grey,
                //   itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                //     const PopupMenuItem<String>(
                //       value: '0',
                //       child: Text('Fresher(less than 1 year)'),
                //     ),
                //     const PopupMenuItem<String>(
                //       value: '1',
                //       child: Text('1 year'),
                //     ),

                //     const PopupMenuItem<String>(
                //       value: '2',
                //       child: Text('2 years'),
                //     ),
                //     const PopupMenuItem<String>(
                //       value: '3',
                //       child: Text('3 years'),
                //     ),
                //     const PopupMenuItem<String>(
                //       value: '4',
                //       child: Text('4 years'),
                //     ),
                //     const PopupMenuItem<String>(
                //       value: '5',
                //       child: Text('5 years'),
                //     ),
                //     // Add more PopupMenuItems as needed
                //   ],
                //   onSelected: (String value) {
                //     // Handle the selection here
                //     setState(() {
                //       _selectedExperience = value;
                //       _experienceController.text = _getExperienceText(value);
                //     });
                //   },
                //   child: Container(
                //       height: 40 * s.customHeight,
                //       width: 200 * s.customWidth,
                //       child: Padding(
                //         padding: EdgeInsets.only(top: 15 * s.customHeight),
                //         child: TextField(
                //           controller: _experienceController,
                //           cursorColor: Colors.black,
                //           showCursor: true,
                //           decoration: InputDecoration(
                //             // filled: true,
                //             fillColor: Colors.white,
                //             focusColor: Colors.white,
                //             focusedBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(color: Colors.white, width: 2.0),
                //               borderRadius: BorderRadius.circular(30),
                //             ),
                //             border: OutlineInputBorder(
                //               borderSide: const BorderSide(color: Colors.white, width: 2.0),
                //               borderRadius: BorderRadius.circular(30),
                //             ),
                //             enabledBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(color: Colors.white, width: 2.0),
                //               borderRadius: BorderRadius.circular(30),
                //             ),
                //             hintText: 'Select Experience',
                //             hintStyle: const TextStyle(color: Colors.grey),
                //           ),
                //         ),
                //       )),
                // ),
                // SizedBox(
                //   height: 20 * s.customHeight,
                //   child: VerticalDivider(
                //     color: Colors.grey,
                //     thickness: 2,
                //   ),
                // ),
                Container(
                    height: 40 * s.customHeight,
                    width: 170 * s.customWidth,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 12 * s.customHeight),
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
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                          ),
                          style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                GestureDetector(
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
            ),
          ),
        ],
      ),
    );
  }
}
