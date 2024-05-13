import 'package:flutter/material.dart';
import 'package:fuerteads/Pages/SubScription-Plan/sp.dart';
import 'package:fuerteads/values/screen.dart';
import 'package:fuerteads/values/values.dart';
import 'package:fuerteads/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../responsive.dart' as res;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class ResultPage extends StatefulWidget {
  final String experience;
  final String location;
  const ResultPage({super.key, required this.experience, required this.location});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<Map<String, dynamic>> jobDataList = [
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are seeking a highly skilled and experienced Finishing Incharge to join our company.",
      "tags": [
        "Full Time",
        "Mid Level",
      ],
      "iconData": Icons.work,
      "Image": "assets/8.png",
      "containerColor": Color.fromARGB(255, 207, 247, 115),
    },
    {
      "jobTitle": "Java Developer",
      "jobDescription": " Ensure adherence to operational and quality policies and procedures to manage finishing work efficiently and safely and to enable the factory to meet the despatch targets.",
      "tags": [
        "Full Time",
        "Mid Level",
      ],
      "iconData": Icons.work,
      "Image": "assets/1.png",
      "containerColor": Color.fromARGB(255, 129, 251, 219),
    },
    {
      "jobTitle": "Node Js",
      "jobDescription": "Overall responsibility for customer interaction leading to customer delight.",
      "tags": [
        "Internship",
        "Mid Level",
      ],
      "Image": "assets/2.png",
      "containerColor": Color.fromARGB(255, 247, 146, 224), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "Daily counting of stock.Visual Merchandise, Cleanliness of the counter.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/3.png",
      "containerColor": Color.fromARGB(255, 175, 154, 244), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "To be successful in this role, you should have excellent communication and interpersonal skills, as well as a strong understanding of the medical industry.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/4.png",
      "containerColor": Color.fromARGB(255, 250, 197, 153), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are looking for Jr Quality Engineer having minimum two years of experience in Quality control.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/5.png",
      "containerColor": Color.fromARGB(255, 116, 238, 238), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "Urgent Hiring for Jr Assistant Engineer- BE Mechanical is must required.- minimum 2 year experience required.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/6.png",
      "containerColor": Color.fromARGB(255, 106, 201, 245), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are seeking a dynamic and results-oriented Associate Manager to join our team.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/7.png",
      "containerColor": Color.fromARGB(255, 249, 124, 124), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are seeking a highly skilled and experienced Finishing Incharge to join our company.",
      "tags": [
        "Full Time",
        "Mid Level",
      ],
      "iconData": Icons.work,
      "Image": "assets/8.png",
      "containerColor": Color.fromARGB(255, 224, 224, 224),
    },
    {
      "jobTitle": "Java Developer",
      "jobDescription": " Ensure adherence to operational and quality policies and procedures to manage finishing work efficiently and safely and to enable the factory to meet the despatch targets.",
      "tags": [
        "Full Time",
        "Mid Level",
      ],
      "iconData": Icons.work,
      "Image": "assets/1.png",
      "containerColor": Color.fromARGB(255, 217, 255, 245),
    },
    {
      "jobTitle": "Node Js",
      "jobDescription": "Overall responsibility for customer interaction leading to customer delight.",
      "tags": [
        "Internship",
        "Mid Level",
      ],
      "Image": "assets/2.png",
      "containerColor": const Color.fromRGBO(251, 226, 245, 1), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "Daily counting of stock.Visual Merchandise, Cleanliness of the counter.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/3.png",
      "containerColor": const Color.fromRGBO(226, 219, 250, 1), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "To be successful in this role, you should have excellent communication and interpersonal skills, as well as a strong understanding of the medical industry.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/4.png",
      "containerColor": const Color.fromRGBO(255, 234, 217, 1), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are looking for Jr Quality Engineer having minimum two years of experience in Quality control.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/5.png",
      "containerColor": Color.fromARGB(255, 238, 255, 217), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "Urgent Hiring for Jr Assistant Engineer- BE Mechanical is must required.- minimum 2 year experience required.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/6.png",
      "containerColor": Color.fromARGB(255, 217, 243, 255), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are seeking a dynamic and results-oriented Associate Manager to join our team.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/7.png",
      "containerColor": Color.fromARGB(255, 255, 217, 217), // Example color
    },
  ];

  startLaunchURL(String url) async {
    // const url = 'https://flutter.dev';

    var urllaunchable = await canLaunchUrl(Uri.parse(url)); //canLaunch is from url_launcher package
    if (urllaunchable) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication); //launch is from url_launcher package to launch URL
    } else {
      print("URL can't be launched.");
    }
  }

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
                      startLaunchURL("https://play.google.com/store/apps/details?id=com.avd.driverapp&hl=en_IN&gl=US");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        width: 370 * s.customWidth,
                        height: 40,
                        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: AutoSizeText(
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
              decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20 * s.customWidth, right: 5 * s.customWidth),
                    child: FaIcon(Icons.search_outlined),
                  ),
                  AutoSizeText(
                    widget.experience, //"Driving Jobs",
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
                    widget.location, // "Morbi, Gujarat",
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
                            style: GoogleFonts.aBeeZee(fontSize: 15, color: black),
                          ),
                          SizedBox(
                            width: 10 * s.customWidth,
                          ),
                          AutoSizeText(
                            "₹10000 - 20000",
                            style: GoogleFonts.aBeeZee(fontSize: 15, color: black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SfSlider(
                        showDividers: true,
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
                      ).h(30),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 10 * s.customWidth,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20 * s.customWidth),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ResultPage(
                                  experience: widget.experience,
                                  location: widget.location,
                                )));
                      },
                      child: Container(
                        height: 42 * s.customHeight,
                        width: 100 * s.customWidth,
                        decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
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
                              style: GoogleFonts.aBeeZee(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20 * s.customWidth),
              child: Row(
                children: [
                  Container(
                    width: screenWidth > 1000 ? 250 : 220,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Filters",
                              style: GoogleFonts.aBeeZee(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            Text(
                              "Clear All",
                              style: GoogleFonts.aBeeZee(color: grey, fontWeight: FontWeight.bold, fontSize: 12),
                            ).pOnly(top: 5),
                          ],
                        ),
                        15.heightBox,
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10)
                                  // color: Colors.amber,
                                  ),
                              child: Column(
                                children: [
                                  DropdownWidget(
                                    name: "Job Type",
                                    items: [
                                      "All",
                                      "Full-Time",
                                      "Part-Time",
                                      "Remote",
                                      "Internship",
                                      "Contract",
                                    ],
                                  ),
                                  Divider().px16(),
                                  DropdownWidget(
                                    name: "Work Type",
                                    items: [
                                      "On-Site",
                                      "Remote",
                                      "Hybrid"
                                    ],
                                  ),
                                  Divider().px16(),
                                  DropdownWidget(
                                    name: "Employment Type",
                                    items: [
                                      "On-Site",
                                      "Remote",
                                      "Hybrid"
                                    ],
                                  ),
                                  Divider().px16(),
                                  DropdownWidget(
                                    name: "Job Functions",
                                    items: [
                                      "On-Site",
                                      "Remote",
                                      "Hybrid"
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        15.heightBox
                      ],
                    ),
                  ).pOnly(right: 20),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Driving Jobs",
                                    style: GoogleFonts.aBeeZee(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
                                  ),
                                  10.widthBox,
                                  Text(
                                    "Search Result (05)",
                                    style: GoogleFonts.aBeeZee(color: grey, fontWeight: FontWeight.bold, fontSize: 19),
                                  ).pOnly(bottom: 2),
                                ],
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: 160 * s.customWidth,
                                ),
                              ),
                              Container(
                                  height: 35 * s.customHeight,
                                  width: 120 * s.customWidth,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.grey.shade200)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      AutoSizeText(
                                        "Popular",
                                        style: GoogleFonts.aBeeZee(color: black, fontWeight: FontWeight.bold, fontSize: 15),
                                      ),
                                      Icon(Icons.keyboard_arrow_down_outlined)
                                    ],
                                  )),
                            ],
                          ),
                          15.heightBox,
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Container(
                                // color: Colors.amber,
                                width: double.infinity,
                                child: LayoutBuilder(
                                  builder: (BuildContext context, BoxConstraints constraints) {
                                    int numberOfColumns = constraints.maxWidth > 1200 ? 5 : (constraints.maxWidth < 600 ? 2 : 3); // Adjust based on screen width
                                    int numberOfRows = (jobDataList.length / numberOfColumns).ceil(); //jobData.length  = at 10
                                    return Column(
                                      children: List.generate(numberOfRows, (index) {
                                        return Row(
                                          children: List.generate(numberOfColumns, (columnIndex) {
                                            int dataIndex = index * numberOfColumns + columnIndex;
                                            if (dataIndex < jobDataList.length) {
                                              var jobData = jobDataList[dataIndex];

                                              return Expanded(
                                                child: CustomJobContainer(
                                                  containerColor: jobData['containerColor'],
                                                  onDetailsTap: () {
                                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubscriptionPlan()));
                                                  },
                                                  onApplyNowTap: () {},
                                                  jobTitle: jobData['jobTitle'],
                                                  jobDescription: jobData['jobDescription'],
                                                  tags: jobData['tags'],
                                                  imageUrl: jobData['Image'], //jobData[dataIndex].tags,
                                                ).pOnly(right: 20, bottom: 20),
                                              );
                                            } else {
                                              return Expanded(child: SizedBox()); // Empty container if there's no data
                                            }
                                          }),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20 * s.customWidth),
          //   child: Row(
          //     children: [
          //       AutoSizeText(
          //         "Filters",
          //         style: GoogleFonts.aBeeZee(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          //       ),
          //       SizedBox(
          //         width: 110 * s.customWidth,
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(top: 4.0),
          //         child: AutoSizeText(
          //           "Clear All",
          //           style: GoogleFonts.aBeeZee(color: grey, fontWeight: FontWeight.bold, fontSize: 12),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 20 * s.customWidth,
          //       ),
          //       AutoSizeText(
          //         "Driving Jobs",
          //         style: GoogleFonts.aBeeZee(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          //       ),
          //       SizedBox(
          //         width: 10 * s.customWidth,
          //       ),
          //       AutoSizeText(
          //         "Search Result (05)",
          //         style: GoogleFonts.aBeeZee(color: grey, fontWeight: FontWeight.bold, fontSize: 19),
          //       ),
          //       Expanded(
          //         child: SizedBox(
          //           width: 160 * s.customWidth,
          //         ),
          //       ),
          //       Container(
          //           height: 35 * s.customHeight,
          //           width: 120 * s.customWidth,
          //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.grey.shade200)),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: [
          //               AutoSizeText(
          //                 "Popular",
          //                 style: GoogleFonts.aBeeZee(color: black, fontWeight: FontWeight.bold, fontSize: 15),
          //               ),
          //               Icon(Icons.keyboard_arrow_down_outlined)
          //             ],
          //           )),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 10 * s.customHeight,
          // ),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 20 * s.customWidth),
          //       child: Container(
          //         width: 230 * s.customWidth,
          //         height: 500 * s.customHeight,
          //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.grey.shade200)),
          //       ),
          //     ),
          //     // GridView.builder(
          //     //   itemCount:
          //     //       3, // Replace 'itemCount' with your actual item count
          //     //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     //     crossAxisCount:
          //     //         2, // You can change the cross axis count as needed
          //     //     crossAxisSpacing: 10.0,
          //     //     mainAxisSpacing: 10.0,
          //     //   ),
          //     //   itemBuilder: (BuildContext context, int index) {
          //     //     return driverImage(); // Call your driverImage function here
          //     //   },
          //     // )
          //     buildWrap()
          //   ],
          // ),
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
      decoration: BoxDecoration(color: Colors.blue.shade200, borderRadius: BorderRadius.circular(2)),
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
              style: GoogleFonts.aBeeZee(color: black, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: w * 0.01,
            ),
            child: AutoSizeText(
              "+91- 987654****",
              style: GoogleFonts.aBeeZee(color: black, fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: w * 0.01,
            ),
            child: AutoSizeText(
              "Junagadh, Gujarat",
              style: GoogleFonts.aBeeZee(color: black, fontWeight: FontWeight.w500, fontSize: 12),
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
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubscriptionPlan()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 42 * s.customHeight,
                width: 150 * s.customWidth,
                decoration: BoxDecoration(color: Colors.yellowAccent, borderRadius: BorderRadius.circular(12)),
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
                      style: GoogleFonts.aBeeZee(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
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

class CustomJobContainer extends StatefulWidget {
  final VoidCallback onDetailsTap;
  final VoidCallback onApplyNowTap;
  final String jobTitle;
  final String jobDescription;
  final List<String> tags;
  final Color containerColor;
  final String imageUrl;

  CustomJobContainer({
    required this.onDetailsTap,
    required this.onApplyNowTap,
    required this.jobTitle,
    required this.jobDescription,
    required this.tags,
    required this.containerColor,
    required this.imageUrl,
  });

  @override
  State<CustomJobContainer> createState() => _CustomJobContainerState();
}

class _CustomJobContainerState extends State<CustomJobContainer> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            offset: Offset(4, 4), // Offset in x and y direction
            blurRadius: 4, // Blur radius
            spreadRadius: 1, // Spread radius
          ),
        ],
        color: widget.containerColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(40, 0, 0, 0), width: 1),
      ),
      width: 300,
      height: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 1, // Spread radius
                      blurRadius: 0, // Blur radius
                      offset: Offset(3, 3), // Offset in x and y direction
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.asset(
                      widget.imageUrl,
                      // width: 60,
                      // height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isBookmarked = !isBookmarked;
                  });
                },
                child: Icon(
                  isBookmarked ? Icons.bookmark : Icons.bookmark_border_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.heightBox,
                      Text(
                        widget.jobTitle,
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      5.heightBox,
                      Expanded(
                        child: Text(
                          widget.jobDescription,
                          style: GoogleFonts.montserrat(fontSize: 11, fontWeight: FontWeight.w500, height: 2),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      Container(
                        // color: Colors.amber,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: widget.tags
                                .map((tag) => Container(
                                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: Color.fromARGB(77, 0, 0, 0))),
                                      child: Center(
                                        child: Text(
                                          tag,
                                          style: GoogleFonts.montserrat(fontSize: 10, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ).pOnly(right: 10))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          10.heightBox,
          Row(
            children: [
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: widget.onDetailsTap,
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.transparent, border: Border.all()),
                      child: Center(
                        child: Text(
                          "Details",
                          style: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ).p(15),
    );
  }
}

class DropdownWidget extends StatefulWidget {
  final String name;
  final List<String> items;

  DropdownWidget({required this.items, required this.name});

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  bool _showDropdown = true;
  List<bool> isCheckedList = [];

  @override
  void initState() {
    super.initState();
    isCheckedList = List<bool>.filled(widget.items.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _showDropdown = !_showDropdown;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 16),
              ).pOnly(left: 5),
              Icon(
                _showDropdown ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 30,
              ).pOnly(top: 5),
            ],
          ).p(12),
        ),
        Visibility(
          visible: _showDropdown,
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: widget.items.asMap().entries.map((entry) {
                int index = entry.key;
                String item = entry.value;
                return InkWell(
                  onTap: () {
                    setState(() {
                      isCheckedList[index] = !isCheckedList[index];
                    });
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Transform.scale(
                      scale: 0.8,
                      child: Checkbox(
                        activeColor: Colors.yellow,
                        value: isCheckedList[index],
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckedList[index] = value ?? false;
                          });
                        },
                      ),
                    ),
                    title: Text(item, style: GoogleFonts.montserrat(fontSize: 14)),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
