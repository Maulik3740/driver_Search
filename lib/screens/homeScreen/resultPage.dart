import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fuerteads/Pages/SubScription-Plan/sp.dart';
import 'package:fuerteads/values/screen.dart';
import 'package:fuerteads/values/values.dart';
import 'package:fuerteads/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultPage extends StatefulWidget {
  final String experience;
  final String location;
  const ResultPage({super.key, required this.experience, required this.location});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final String mobile = "9724******";
  RangeValues _values = RangeValues(1000.0, 10000.0);

  List<Map<String, dynamic>> jobDataList = [
    {
      "jobTitle": "Orr Wilkinson",
      "phone": "(910) 496-3708",
      "address": "663 Dewitt Avenue, Catherine, Colorado, 5739",
      "iconData": Icons.work,
      "Image": "assets/8.png",
      "experience": "3 Year",
      "vehicle": "Truck",
      "containerColor": Color.fromARGB(255, 207, 247, 115),
    },
    {
      "jobTitle": "Baxter Perkins",
      "phone": "(867) 577-3207",
      "address": "314 Harrison Place, Chalfant, Marshall Islands, 7954",
      "iconData": Icons.work,
      "Image": "assets/1.png",
      "experience": "3 Year",
      "vehicle": "Truck",
      "containerColor": Color.fromARGB(255, 129, 251, 219),
    },
    {
      "jobTitle": "Ruthie Goodman",
      "phone": "(932) 440-3288",
      "address": "604 Vermont Court, Sunriver, Minnesota, 627",
      "Image": "assets/2.png", "experience": "3 Year",
      "vehicle": "Truck",

      "containerColor": Color.fromARGB(255, 247, 146, 224), // Example color
    },
    {
      "jobTitle": "Ruthie Goodman",
      "phone": "(932) 440-3288",
      "address": "604 Vermont Court, Sunriver, Minnesota, 627",
      "Image": "assets/3.png", "experience": "3 Year",
      "vehicle": "Truck",

      "containerColor": Color.fromARGB(255, 175, 154, 244), // Example color
    },
    {
      "jobTitle": "Sherri Velazquez",
      "phone": "(920) 559-3126",
      "address": "343 Dahl Court, Axis, Connecticut, 7932",
      "Image": "assets/4.png", "experience": "3 Year",
      "vehicle": "Truck",

      "containerColor": Color.fromARGB(255, 250, 197, 153), // Example color
    },
    {
      "jobTitle": "Lori Wilcox",
      "phone": "(960) 591-2864",
      "address": "607 Williams Avenue, Gratton, Idaho, 1772",
      "Image": "assets/5.png", "experience": "3 Year",
      "vehicle": "Truck",

      "containerColor": Color.fromARGB(255, 116, 238, 238), // Example color
    },
    {
      "jobTitle": "Irene Cain",
      "phone": "(812) 526-2641",
      "address": "647 India Street, Brewster, Massachusetts, 906",
      "Image": "assets/6.png", "experience": "3 Year",
      "vehicle": "Truck",

      "containerColor": Color.fromARGB(255, 106, 201, 245), // Example color
    },
    {
      "jobTitle": "Arlene Nicholson",
      "phone": "(981) 482-2253",
      "address": "781 Ralph Avenue, Hoehne, West Virginia, 1870",
      "Image": "assets/7.png", "experience": "3 Year",
      "vehicle": "Truck",

      "containerColor": Color.fromARGB(255, 249, 124, 124), // Example color
    },
    {
      "jobTitle": "Arlene Nicholson",
      "phone": "(981) 482-2253",
      "address": "781 Ralph Avenue, Hoehne, West Virginia, 1870",
      "Image": "assets/7.png", "experience": "3 Year",
      "vehicle": "Truck",

      "containerColor": Color.fromARGB(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 124), // Example color
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

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    Screen s = Screen(context);
    // final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Color(0xfff4f9fe),
      // backgroundColor: white,
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
                      Icons.bus_alert,
                      color: red,
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 250),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: AutoSizeText(
                        overflow: TextOverflow.ellipsis,
                        widget.location,
                        style: GoogleFonts.aBeeZee(fontSize: 15, color: black),
                      ),
                    ),
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
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 5),
                  //   child: Icon(
                  //     Icons.work_history,
                  //     color: green,
                  //   ),
                  // ),
                  // AutoSizeText(
                  //   "2+ Years Of Experience",
                  //   style: GoogleFonts.aBeeZee(fontSize: 15, color: black),
                  // ),
                  widget.experience == "Driver"
                      ? buildCustomDropdownForm(
                          items: [
                              "1 Year",
                              "2 Year",
                              "3 Year",
                              "4 Year",
                              "5 Year",
                            ],
                          onChanged: (String? value) {
                            print("object..................................$value");
                          }).w(250)
                      : Container(),
                  widget.experience == "Driver"
                      ? SizedBox(
                          width: 40 * s.customWidth,
                        )
                      : Container(),
                  widget.experience == "Driver"
                      ? SizedBox(
                          height: 30 * s.customHeight,
                          child: VerticalDivider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                        )
                      : Container(),
                  widget.experience == "Driver"
                      ? SizedBox(
                          width: 40 * s.customWidth,
                        )
                      : Container(),
                  widget.experience == "Driver" || widget.experience == "Vehicle Owner"
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Salary Range (Month)",
                                  style: GoogleFonts.montserrat(),
                                ),
                                50.widthBox,
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "\₹${_values.start.round()} - \₹${_values.end.round()}",
                                    style: GoogleFonts.aBeeZee(fontSize: 15, color: black, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            RangeSlider(
                              values: _values,
                              activeColor: Colors.yellow,
                              onChanged: (values) {
                                setState(() {
                                  _values = values;
                                });
                              },
                              min: 1000.0,
                              max: 10000.0,
                              divisions: (10000 - 1000) ~/ 100,
                            ).wh(300, 20),
                          ],
                        )
                      : Container(),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Row(
                  //       children: [
                  //         AutoSizeText(
                  //           "Salary Range(Month)",
                  //           style: GoogleFonts.aBeeZee(fontSize: 15, color: black),
                  //         ),
                  //         SizedBox(
                  //           width: 10 * s.customWidth,
                  //         ),
                  //         AutoSizeText(
                  //           "₹10000 - 20000",
                  //           style: GoogleFonts.aBeeZee(fontSize: 15, color: black, fontWeight: FontWeight.bold),
                  //         ),
                  //       ],
                  //     ),
                  //     SfSlider(
                  //       showDividers: true,
                  //       min: 0,
                  //       max: 100000,
                  //       value: _value,
                  //       // interval: 20,
                  //       showTicks: true,
                  //       showLabels: true,
                  //       enableTooltip: true,
                  //       minorTicksPerInterval: 1,
                  //       onChanged: (dynamic value) {
                  //         setState(() {
                  //           _value = value;
                  //         });
                  //       },
                  //     ).h(30),
                  //   ],
                  // ),
                  Expanded(child: Container()
                      //  SizedBox(
                      //   width: 10 * s.customWidth,
                      // ),
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
                                  Divider(
                                    color: Colors.black,
                                  ).px16(),
                                  DropdownWidget(
                                    name: "Work Type",
                                    items: [
                                      "On-Site",
                                      "Remote",
                                      "Hybrid"
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black,
                                  ).px16(),
                                  DropdownWidget(
                                    name: "Employment Type",
                                    items: [
                                      "On-Site",
                                      "Remote",
                                      "Hybrid"
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black,
                                  ).px16(),
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
                                  child: Container(
                                color: Colors.transparent,
                                width: double.infinity,
                                height: 35 * s.customHeight,
                              )
                                  //  SizedBox(
                                  //   width: 160 * s.customWidth,
                                  // ),
                                  ),
                              Container(
                                  height: 35 * s.customHeight,
                                  // width: 120 * s.customWidth,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
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
                                    int numberOfColumns = constraints.maxWidth > 1100 ? 5 : (constraints.maxWidth >= 800 && constraints.maxWidth <= 1100 ? 4 : (constraints.maxWidth < 600 ? 2 : 3));
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

                                                  jobTitle: jobData['jobTitle'],
                                                  mobile: widget.experience == "Driver" ? mobile : jobData['phone'],
                                                  address: jobData['address'],
                                                  experience: widget.experience == "Driver" ? jobData['experience'] : '',
                                                  vehicle: widget.experience == "Driver" || widget.experience == "Vehicle Owner" ? jobData['vehicle'] : '',
                                                  imageUrl: jobData['Image'],
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
        ],
      ),
    );
  }

  Widget buildCustomDropdownForm({
    required List<String> items,
    // required String dropdownValue,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      height: 45,
      child: Theme(
        data: ThemeData(focusColor: Colors.yellow),
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.work_history,
              color: green,
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.transparent,
            )),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.transparent,
            )),
            filled: true,
            fillColor: Colors.grey.shade200,
            hintText: "Select your Experience",
            hintStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 15.0),
            // border: OutlineInputBorder(),
          ),
          // value: dropdownValue,
          items: items.map((String item) {
            return DropdownMenuItem(
              value: item,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  item,
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ).pOnly(top: 4),
              ),
            );
          }).toList(),
          onChanged: onChanged,
          iconSize: 30,
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
            // size: 30,
          ).pOnly(top: 2),
          dropdownColor: Colors.blue.shade50,
        ),
      ),
    );
  }
}

class CustomJobContainer extends StatefulWidget {
  final VoidCallback onDetailsTap;
  final String jobTitle;
  final String mobile;
  final String address;
  final String experience;
  final String vehicle;
  final Color containerColor;
  final String imageUrl;

  CustomJobContainer({
    required this.onDetailsTap,
    required this.jobTitle,
    required this.containerColor,
    required this.imageUrl,
    required this.mobile,
    required this.address,
    required this.experience,
    required this.vehicle,
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
      height: 250,
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
                  radius: 20,
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
                      5.heightBox,
                      Text(
                        widget.jobTitle,
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        "+91 - ${widget.mobile}",
                        style: TextStyle(
                          // color: Colors.grey.shade700,
                          fontWeight: FontWeight.w900,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        widget.address,
                        style: TextStyle(
                          // color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text(
                        widget.vehicle,
                        style: TextStyle(
                          // color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        widget.experience,
                        style: TextStyle(
                          // color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      5.heightBox,
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
            padding: EdgeInsets.symmetric(horizontal: 8),
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
                    title: Text(item, style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600)),
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
