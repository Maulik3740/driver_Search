import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon icon;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.obscureText = false,
    required this.icon,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        prefixIcon: icon,
        floatingLabelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        hintText: hintText,
        labelStyle: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Change border color here
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Change border color here
        ),
        errorStyle: TextStyle(color: Colors.red),
      ),
      style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15),
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:velocity_x/velocity_x.dart';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/widgets.dart';

// class TopBarHeading extends StatelessWidget {
//   final String text;
//   final Color color;
//   const TopBarHeading({super.key, required this.text, required this.color});

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: GoogleFonts.poppins(fontSize: 14, color: color, fontWeight: FontWeight.w600),
//     );
//   }
// }

// class subHeading extends StatelessWidget {
//   final String text;
//   bool isBold = true;

//   subHeading({
//     Key? key,
//     required this.text,
//     required this.isBold,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: GoogleFonts.poppins(fontSize: 13, color: Colors.black, fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
//     );
//   }
// }

// class CustomButton extends StatelessWidget {
//   final VoidCallback onTap;
//   final String text;

//   const CustomButton({Key? key, required this.text, required this.onTap}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         height: 40,
//         width: 150,
//         padding: EdgeInsets.all(8),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.horizontal(
//             left: Radius.circular(50),
//             right: Radius.circular(50),
//           ),
//           color: Colors.white,
//           border: Border.all(color: Colors.black),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Flexible(
//               child: Text(
//                 text,
//                 overflow: TextOverflow.ellipsis,
//                 style: GoogleFonts.poppins(
//                   fontSize: 13,
//                   color: Colors.black,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             SizedBox(width: 5),
//             Icon(
//               Icons.search,
//               size: 18.0,
//               color: Colors.black,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CustomJobContainer extends StatefulWidget {
//   // final VoidCallback onDetailsTap;
//   // final VoidCallback onApplyNowTap;
//   final String jobTitle;
//   final String jobLocation;
//   final String salaryText;

//   // final Color containerColor;
//   final String imageUrl;

//   CustomJobContainer({
//     // required this.onDetailsTap,
//     // required this.onApplyNowTap,
//     required this.jobTitle,
//     required this.jobLocation,
//     required this.salaryText,

//     // required this.containerColor,
//     required this.imageUrl,
//   });

//   @override
//   State<CustomJobContainer> createState() => _CustomJobContainerState();
// }

// class _CustomJobContainerState extends State<CustomJobContainer> {
//   bool isBookmarked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Colors.white, // Shadow color
//           ),
//         ],
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.grey.shade300, width: 1),
//       ),
//       width: 270,
//       height: 220,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 24,
//                 backgroundColor: Colors.grey.shade200,
//                 child: ClipOval(
//                     child: Image.asset(
//                   height: 22,
//                   width: 22,
//                   widget.imageUrl,
//                 )),
//               ),
//             ],
//           ),
//           Expanded(
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       10.heightBox,
//                       Text(
//                         widget.jobTitle,
//                         style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),
//                       ),
//                       5.heightBox,
//                       Expanded(
//                         child: Text(
//                           widget.jobLocation,
//                           style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey.shade400, fontWeight: FontWeight.w500, height: 2),
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 3,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           10.heightBox,
//           Row(
//             children: [
//               Expanded(
//                 child: Material(
//                   color: Colors.transparent,
//                   child: InkWell(
//                     borderRadius: BorderRadius.circular(10),
//                     onTap: () {},
//                     child: Container(
//                       height: 35,
//                       decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(left: Radius.circular(50), right: Radius.circular(50)), color: Colors.transparent, border: Border.all()),
//                       child: Center(
//                         child: Text(
//                           widget.salaryText,
//                           style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 13),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(width: 10),
//             ],
//           ),
//         ],
//       ).p(15),
//     );
//   }
// }

// class FindJobWeb extends StatefulWidget {
//   const FindJobWeb({super.key});

//   @override
//   State<FindJobWeb> createState() => _FindJobWebState();
// }

// class _FindJobWebState extends State<FindJobWeb> {
//   int selected = 0;

//   @override
//   Widget build(BuildContext context) {
//     double imageRadius = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//               child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 700,
//                       height: 400,
//                       child: Stack(
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(colors: [
//                                 Color.fromRGBO(117, 198, 184, 1),
//                                 Color.fromRGBO(232, 208, 135, 1),
//                                 Color.fromRGBO(195, 193, 107, 1),
//                                 Color.fromRGBO(252, 192, 72, 1),
//                                 Color.fromRGBO(252, 162, 32, 1),
//                                 Color.fromRGBO(254, 193, 78, 1),
//                                 Color.fromRGBO(246, 131, 70, 1),
//                                 Color.fromRGBO(255, 143, 73, 1),
//                               ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//                               borderRadius: BorderRadius.circular(15.0),
//                             ),
//                             child: Stack(
//                               children: [
//                                 Positioned(
//                                   left: 25,
//                                   top: 15,
//                                   child: CircleAvatar(
//                                     backgroundImage: AssetImage('assets/profile2.jpeg'),
//                                     // radius: imageRadius / 30,
//                                     radius: 50,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 110,
//                                   top: 105,
//                                   child: CircleAvatar(
//                                     backgroundImage: AssetImage('assets/profile3.jpeg'),
//                                     // radius: imageRadius / 32,
//                                     radius: 45,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 175,
//                                   top: 12,
//                                   child: CircleAvatar(
//                                     backgroundImage: AssetImage('assets/profile4.jpeg'),
//                                     // radius: imageRadius / 42,
//                                     radius: 33,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 240,
//                                   top: 80,
//                                   child: CircleAvatar(
//                                     backgroundImage: AssetImage('assets/profile3.jpeg'),
//                                     // radius: imageRadius / 23,
//                                     radius: 65,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 350,
//                                   top: 12,
//                                   child: CircleAvatar(
//                                     backgroundImage: AssetImage('assets/profile5.jpeg'),
//                                     // radius: imageRadius / 42,
//                                     radius: 32,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 420,
//                                   top: 100,
//                                   child: CircleAvatar(
//                                     backgroundImage: AssetImage('assets/profile6.jpeg'),
//                                     // radius: imageRadius / 33,
//                                     radius: 48,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 490,
//                                   top: 15,
//                                   child: CircleAvatar(
//                                     backgroundImage: AssetImage('assets/profile7.jpeg'),
//                                     // radius: imageRadius / 41,
//                                     radius: 35,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 560,
//                                   top: 100,
//                                   child: CircleAvatar(
//                                     backgroundImage: AssetImage('assets/profile2.jpeg'),
//                                     // radius: imageRadius / 30,
//                                     radius: 50,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 620,
//                                   top: 15,
//                                   child: CircleAvatar(
//                                     backgroundImage: AssetImage('assets/profile7.jpeg'),
//                                     // radius: imageRadius / 41,
//                                     radius: 35,
//                                   ),
//                                 ),
//                                 Positioned(
//                                   top: 220,
//                                   left: 200,
//                                   child: Text(
//                                     "Search For your next job",
//                                     style: GoogleFonts.poppins(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w600),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   top: 260,
//                                   left: 190,
//                                   child: Text(
//                                     "When you are searching for a job, there are a few things you can do to",
//                                     style: GoogleFonts.poppins(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w300),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   top: 275,
//                                   left: 280,
//                                   child: Text(
//                                     "get the most out of your search",
//                                     style: GoogleFonts.poppins(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w300),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ).py20(),

//                           // Job Search Bar
//                           Positioned(
//                             bottom: 0,
//                             left: 50,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   height: 55,
//                                   width: 600,
//                                   decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       boxShadow: [
//                                         BoxShadow(
//                                           blurRadius: 6,
//                                           offset: Offset(0, 4),
//                                           color: Colors.grey.shade400,
//                                         )
//                                       ],
//                                       // color: Colors.white,
//                                       borderRadius: BorderRadius.horizontal(left: Radius.circular(50.0), right: Radius.circular(50.0))),
//                                   child: Row(
//                                     children: [
//                                       CircleAvatar(
//                                         foregroundColor: Colors.white,
//                                         backgroundColor: Color.fromRGBO(0, 208, 101, 1),
//                                         child: Icon(
//                                           Icons.search,
//                                           size: 18.0,
//                                         ),
//                                         radius: 19,
//                                       ),
//                                       10.widthBox,
//                                       Expanded(
//                                         child: Container(
//                                           height: 30,
//                                           child: TextFormField(
//                                             cursorColor: Colors.grey.shade500,
//                                             style: GoogleFonts.poppins(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w500),
//                                             decoration: InputDecoration(border: InputBorder.none, hintText: "Job title , keyword or company", hintStyle: GoogleFonts.poppins(fontSize: 13.0, color: Colors.grey.shade500, fontWeight: FontWeight.w500), contentPadding: EdgeInsets.symmetric(vertical: 14.0)),
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 40.0,
//                                         width: 160,
//                                         // padding: EdgeInsets.all(5.0),
//                                         child: Row(
//                                           mainAxisAlignment: MainAxisAlignment.center,
//                                           children: [
//                                             Icon(
//                                               Icons.location_on_outlined,
//                                               size: 18.0,
//                                               color: Colors.black45,
//                                             ),
//                                             5.widthBox,
//                                             Text(
//                                               "Any location",
//                                               style: GoogleFonts.poppins(fontSize: 12.0, color: Colors.black45, fontWeight: FontWeight.w600),
//                                             ),
//                                           ],
//                                         ),
//                                         decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(left: Radius.circular(50.0), right: Radius.circular(50.0)), color: const Color.fromRGBO(245, 245, 250, 1)),
//                                       )
//                                     ],
//                                   ).px8(),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),

//                 10.heightBox,

//                 // post resume heading
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     subHeading(
//                       text: "You can also",
//                       isBold: false,
//                     ),
//                     5.widthBox,
//                     subHeading(
//                       text: "Post a job",
//                       isBold: true,
//                     ),
//                     5.widthBox,
//                     subHeading(
//                       text: "or",
//                       isBold: false,
//                     ),
//                     5.widthBox,
//                     subHeading(
//                       text: "Post your resume",
//                       isBold: true,
//                     ),
//                   ],
//                 ),
//                 15.heightBox,

//                 // Suggested Job Heading
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Suggested job searches",
//                       style: GoogleFonts.poppins(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
//                     )
//                   ],
//                 ),
//                 20.heightBox,

//                 Wrap(
//                   alignment: WrapAlignment.center,
//                   spacing: 5.0,
//                   runSpacing: 5.0,
//                   direction: Axis.horizontal,
//                   children: <Widget>[
//                     CustomButton(
//                       onTap: () {},
//                       text: "Founder",
//                     ),
//                     CustomButton(onTap: () {}, text: "Founding Partner"),
//                     CustomButton(onTap: () {}, text: "Personal Assistant"),
//                     CustomButton(onTap: () {}, text: "Project Manager"),
//                     CustomButton(onTap: () {}, text: "Co-Founder"),
//                     CustomButton(onTap: () {}, text: "Managing Director"),
//                     CustomButton(onTap: () {}, text: "Java Developer"),
//                     CustomButton(onTap: () {}, text: "Software Developer"),
//                     CustomButton(onTap: () {}, text: "Game Developer"),
//                     CustomButton(onTap: () {}, text: "Shopify Developer"),
//                     CustomButton(onTap: () {}, text: "Graphic Designer"),
//                   ],
//                 ).px(100),

//                 15.heightBox,

//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 70.0),
//                   child: Wrap(
//                     spacing: 10.0, // Spacing between items
//                     runSpacing: 10.0, // Spacing between lines
//                     children: [
//                       CustomJobContainer(
//                         imageUrl: 'assets/apple.png',
//                         jobTitle: "Data Scientist",
//                         jobLocation: 'California USA',
//                         salaryText: "\$45k - \$55k per month ",
//                       ),
//                       CustomJobContainer(
//                         imageUrl: 'assets/google.png',
//                         jobTitle: "Virtual Schedular - Remote ",
//                         jobLocation: 'NewYork Google Inc',
//                         salaryText: "\$40k - \$48k per month ",
//                       ),
//                       CustomJobContainer(
//                         imageUrl: 'assets/fb.png',
//                         jobTitle: "Patient Care Advocate",
//                         jobLocation: 'Washington Resources Inc.',
//                         salaryText: "\$55k - \$60k per month ",
//                       ),
//                       CustomJobContainer(
//                         imageUrl: 'assets/wipro.png',
//                         jobTitle: "Java Developer",
//                         jobLocation: 'Bangalore India',
//                         salaryText: "\$25k - \$35k per month ",
//                       ),
//                       CustomJobContainer(
//                         imageUrl: 'assets/adobe.png',
//                         jobTitle: "Software Developer",
//                         jobLocation: 'Mumbai India',
//                         salaryText: "\$35k - \$45k per month ",
//                       ),
//                       CustomJobContainer(
//                         imageUrl: 'assets/infosysy.png',
//                         jobTitle: "C C++ Developer",
//                         jobLocation: 'Hydrabad India.',
//                         salaryText: "\$35k - \$40k per month ",
//                       ),
//                       CustomJobContainer(
//                         imageUrl: 'assets/tata.png',
//                         jobTitle: "Mechanical engineer",
//                         jobLocation: 'Ahmadabad Gujarat',
//                         salaryText: "\$15k - \$20k per month ",
//                       ),
//                     ],
//                   ),
//                 ),

//                 30.heightBox,
//               ],
//             ),
//           ))
//         ],
//       ),
//     );
//   }
// }
