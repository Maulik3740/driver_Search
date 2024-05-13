import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MySegmentedControl extends StatefulWidget {
  final String firstSegmentLabel;
  final String secondSegmentLabel;

  MySegmentedControl(
      {required this.firstSegmentLabel, required this.secondSegmentLabel});

  @override
  _MySegmentedControlState createState() => _MySegmentedControlState();
}

class _MySegmentedControlState extends State<MySegmentedControl> {
  int selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoSlidingSegmentedControl<int>(
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
        children: {
          0: buildSegment(widget.firstSegmentLabel, selectedSegment == 0),
          1: buildSegment(widget.secondSegmentLabel, selectedSegment == 1)
        },
        onValueChanged: (value) {
          setState(() => selectedSegment = value ?? selectedSegment);
        },
        groupValue: selectedSegment,
      ),
    );
  }
}

Widget buildSegment(String text, bool isSelected) => Container(
      padding: EdgeInsets.all(4),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );

class mainHeading extends StatelessWidget {
  final String text;

  const mainHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600),
    );
  }
}

class subHeading extends StatelessWidget {
  final String text;
  const subHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: 10,
          color: Color.fromARGB(229, 117, 117, 117),
          fontWeight: FontWeight.w400),
    );
  }
}

class mediumHeading extends StatelessWidget {
  final String text;
  const mediumHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class doneLine extends StatelessWidget {
  final String text;
  const doneLine({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // for write icon
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.green),
              shape: BoxShape.circle),
          child: Icon(
            Icons.done,
            size: 10.0,
            color: Colors.green,
          ),
        ),
        10.widthBox,
        Text(
          text,
          style: GoogleFonts.poppins(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
        )
      ],
    ).px24();
  }
}

class greenHeading extends StatelessWidget {
  final String text;

  const greenHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(37, 165, 65, 1),
      ),
    );
  }
}

// For Incremet And Decrement Quantity
class customCounter extends StatefulWidget {
  const customCounter({super.key});

  @override
  State<customCounter> createState() => _customCounterState();
}

class _customCounterState extends State<customCounter> {
  int count = 0;
  void increment() {
    setState(() {
      if (count < 10) {
        count += 1;
      }
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) {
        count -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 80,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.grey.shade200, Colors.white]),
          borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              decrement();
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "-",
                style: GoogleFonts.poppins(
                    fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Text(
            count.toString(),
            style: GoogleFonts.poppins(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {
              increment();
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "+",
                style: GoogleFonts.poppins(
                    fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ).px12(),
    );
  }
}