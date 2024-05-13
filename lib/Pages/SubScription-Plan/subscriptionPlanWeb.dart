// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fuerteads/Pages/SubScription-Plan/main_subscription_plan.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:velocity_x/velocity_x.dart';

class SubscriptionPlanWeb extends StatefulWidget {
  const SubscriptionPlanWeb({super.key});

  @override
  State<SubscriptionPlanWeb> createState() => _SubscriptionPlanWebState();
}

class _SubscriptionPlanWebState extends State<SubscriptionPlanWeb> {
  int leftSelectedOption = 0;
  int chooseCardOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(233, 233, 233, 1),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 700,
                width: 750,
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.heightBox,
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color.fromRGBO(254, 236, 214, 1),
                          child: Image.asset(
                              height: 35.0, "assets/images/logo.png"),
                        ),
                        20.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Subscription Plan",
                              style: GoogleFonts.poppins(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Unloack instant access to all existing products and daily new releases",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(229, 117, 117, 117)),
                            ),
                          ],
                        )
                      ],
                    ),
                    10.heightBox,
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    10.heightBox,
                    Expanded(
                      child: Row(
                        children: [
                          // Left Side View

                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  // First Choose Plan Cupertino Radio Button
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Choose Plan",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      MySegmentedControl(
                                        firstSegmentLabel: "Quarterly",
                                        secondSegmentLabel: "Yearly",
                                      ).pOnly(right: 5.0)
                                    ],
                                  ),

                                  10.heightBox,

                                  // First Pro Plan Container
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        leftSelectedOption = 0;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.grey.shade200),
                                                color: Color.fromRGBO(
                                                    248, 248, 248, 1),
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                            height: 60,
                                            child: Row(
                                              children: [
                                                // For Custom radio Button Container
                                                Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color:
                                                              leftSelectedOption ==
                                                                      0
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .black,
                                                          width: 1.0),
                                                      shape: BoxShape.circle),
                                                  child: Center(
                                                    child: Container(
                                                      height: 6,
                                                      width: 6,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              leftSelectedOption ==
                                                                      0
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .white,
                                                          shape:
                                                              BoxShape.circle),
                                                    ),
                                                  ),
                                                ),

                                                15.widthBox,

                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    mainHeading(
                                                      text: "Pro Plan",
                                                    ),
                                                    subHeading(
                                                      text:
                                                          "Crafted for Individuals",
                                                    ),
                                                  ],
                                                ),

                                                Spacer(),

                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    mainHeading(
                                                      text: "\$59.99",
                                                    ),
                                                    subHeading(
                                                      text: "1 User / Quaterly",
                                                    ),
                                                  ],
                                                ).pOnly(right: 10.0),
                                              ],
                                            ).px(8),
                                          ).pOnly(right: 5.0),
                                        ),
                                      ],
                                    ),
                                  ),

                                  10.heightBox,

                                  // Second Team Plan Container
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        leftSelectedOption = 1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.grey.shade200),
                                                color: Color.fromRGBO(
                                                    248, 248, 248, 1),
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                            height: 230,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // Team Plan Main Heading Row
                                                Row(
                                                  children: [
                                                    // For Custom Radio Button Container
                                                    Container(
                                                      height: 12,
                                                      width: 12,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: leftSelectedOption ==
                                                                      1
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .black,
                                                              width: 1.0),
                                                          shape:
                                                              BoxShape.circle),
                                                      child: Center(
                                                        child: Container(
                                                          height: 6,
                                                          width: 6,
                                                          decoration: BoxDecoration(
                                                              color: leftSelectedOption ==
                                                                      1
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .white,
                                                              shape: BoxShape
                                                                  .circle),
                                                        ),
                                                      ),
                                                    ),

                                                    15.widthBox,
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        mainHeading(
                                                          text: "Team Plan",
                                                        ),
                                                        subHeading(
                                                          text:
                                                              "Crafted for small teams or business",
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        mainHeading(
                                                          text: "\$189.00",
                                                        ),
                                                        subHeading(
                                                          text:
                                                              "5 User / Quaterly",
                                                        ),
                                                      ],
                                                    ).pOnly(right: 10.0),
                                                  ],
                                                ).p(8),

                                                15.heightBox,
                                                // For write icon list 1
                                                doneLine(
                                                    text:
                                                        "50 downloads per day"),
                                                10.heightBox,

                                                // For write icon list 2
                                                doneLine(
                                                    text:
                                                        "Access to all products or bundles"),
                                                10.heightBox,

                                                // For write icon list 3
                                                doneLine(
                                                    text:
                                                        "Early access to new/beta release features"),
                                                15.heightBox,

                                                Divider(
                                                  color: Colors.grey.shade300,
                                                ),
                                                5.heightBox,

                                                // Team Accounts Row
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        mainHeading(
                                                            text:
                                                                "Team accounts"),
                                                        subHeading(
                                                            text:
                                                                "Starting at 5 users in Team Plan,you can \nincrease.")
                                                      ],
                                                    ),

                                                    // for quantity increase
                                                    customCounter(),
                                                  ],
                                                ).px(6),
                                                5.heightBox
                                              ],
                                            ),
                                          ).pOnly(right: 5.0),
                                        )
                                      ],
                                    ),
                                  ),

                                  10.heightBox,

                                  // Third Business Pro Container

                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        leftSelectedOption = 2;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.grey.shade200),
                                                color: Color.fromRGBO(
                                                    248, 248, 248, 1),
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                            height: 60,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color:
                                                              leftSelectedOption ==
                                                                      2
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .black,
                                                          width: 1.0),
                                                      shape: BoxShape.circle),
                                                  child: Center(
                                                    child: Container(
                                                      height: 6,
                                                      width: 6,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              leftSelectedOption ==
                                                                      2
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .white,
                                                          shape:
                                                              BoxShape.circle),
                                                    ),
                                                  ),
                                                ),
                                                15.widthBox,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    mainHeading(
                                                      text: "Business Pro",
                                                    ),
                                                    subHeading(
                                                      text: "For Big Teams",
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    mainHeading(
                                                      text: "\$350.00",
                                                    ),
                                                    subHeading(
                                                      text:
                                                          "20 User / Quaterly",
                                                    ),
                                                  ],
                                                ).pOnly(right: 10.0),
                                              ],
                                            ).px(8),
                                          ).pOnly(right: 5.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ).pOnly(right: 10.0),
                          ),

                          // Right Side View
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  // Payment Plan Cupertino Radio Button Line
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Payment Plan",
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      MySegmentedControl(
                                        firstSegmentLabel: "Credit Card",
                                        secondSegmentLabel: "Paypal",
                                      ).pOnly(right: 5.0)
                                    ],
                                  ),

                                  10.heightBox,

                                  // Visa   card row
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        chooseCardOption = 0;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.grey.shade200),
                                                color: Color.fromRGBO(
                                                    248, 248, 248, 1),
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                            height: 60,
                                            child: Row(
                                              children: [
                                                // For Custom Radio Button
                                                Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color:
                                                              chooseCardOption ==
                                                                      0
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .black,
                                                          width: 1.0),
                                                      shape: BoxShape.circle),
                                                  child: Center(
                                                    child: Container(
                                                      height: 6,
                                                      width: 6,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              chooseCardOption ==
                                                                      0
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .white,
                                                          shape:
                                                              BoxShape.circle),
                                                    ),
                                                  ),
                                                ),

                                                15.widthBox,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    mainHeading(
                                                      text: ".... 4470",
                                                    ),
                                                    subHeading(
                                                      text: "Visa Card",
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Image.asset(
                                                    height: 35,
                                                    width: 60,
                                                    "assets/images/visa.png")
                                              ],
                                            ).px(8),
                                          ).pOnly(right: 5.0),
                                        ),
                                      ],
                                    ),
                                  ),

                                  10.heightBox,

                                  // Master card row
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        chooseCardOption = 1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.grey.shade200),
                                                color: Color.fromRGBO(
                                                    248, 248, 248, 1),
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                            height: 60,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color:
                                                              chooseCardOption ==
                                                                      1
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .black,
                                                          width: 1.0),
                                                      shape: BoxShape.circle),
                                                  child: Center(
                                                    child: Container(
                                                      height: 6,
                                                      width: 6,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              chooseCardOption ==
                                                                      1
                                                                  ? Colors
                                                                      .deepPurple
                                                                  : Colors
                                                                      .white,
                                                          shape:
                                                              BoxShape.circle),
                                                    ),
                                                  ),
                                                ),
                                                15.widthBox,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    mainHeading(
                                                      text: ".... 0900",
                                                    ),
                                                    subHeading(
                                                      text: "Master Card",
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Image.asset(
                                                    height: 35,
                                                    width: 60,
                                                    "assets/images/masterLogo.png")
                                              ],
                                            ).px(8),
                                          ).pOnly(right: 5.0),
                                        ),
                                      ],
                                    ),
                                  ),

                                  10.heightBox,

                                  // Add New Card Button
                                  Row(
                                    children: [
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  49, 49, 49, 1),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "+ Add New Card",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ).pOnly(right: 5.0),

                                  10.heightBox,

                                  // Discount Code Container
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey.shade200),
                                              color: Color.fromRGBO(
                                                  248, 248, 248, 1),
                                              borderRadius:
                                                  BorderRadius.circular(5.0)),
                                          height: 280,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // Discount code heading

                                              mainHeading(
                                                  text: "Discount Code"),
                                              8.heightBox,

                                              // Discount Code Textfield

                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                        height: 35,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0)),
                                                        child: Row(
                                                          children: [
                                                            // First TextForm Field
                                                            Expanded(
                                                              child:
                                                                  TextFormField(
                                                                cursorColor:
                                                                    Colors
                                                                        .black,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                                decoration:
                                                                    InputDecoration(
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color: Colors
                                                                            .grey
                                                                            .shade300),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color: Colors
                                                                            .grey
                                                                            .shade300),
                                                                  ),
                                                                  contentPadding: EdgeInsets.symmetric(
                                                                      vertical:
                                                                          10.0,
                                                                      horizontal:
                                                                          10.0),
                                                                ),
                                                              ),
                                                            ),
                                                            2.widthBox,
                                                            // Apply Button
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .grey
                                                                          .shade300),
                                                                ),
                                                                child: Center(
                                                                    child: Text(
                                                                  "Apply",
                                                                  style: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                )),
                                                                width: 60,
                                                              ),
                                                            )
                                                          ],
                                                        )),
                                                  ),
                                                ],
                                              ),

                                              8.heightBox,

                                              // 30% Discount code heading

                                              greenHeading(
                                                  text:
                                                      "30 % Discount code applied "),
                                              10.heightBox,

                                              // Team Plan Row
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      mainHeading(
                                                          text: "Team Plan"),
                                                      subHeading(
                                                          text:
                                                              "5 Users Quaterly")
                                                    ],
                                                  ),
                                                  mainHeading(text: "\$189.00")
                                                ],
                                              ),

                                              5.heightBox,

                                              Divider(
                                                color: Colors.grey.shade300,
                                              ),
                                              5.heightBox,

                                              // Discount Row
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  mainHeading(
                                                      text: "Discount (30%)"),
                                                  greenHeading(text: "-\$63.85")
                                                ],
                                              ),
                                              5.heightBox,

                                              Divider(
                                                color: Colors.grey.shade300,
                                              ),
                                              5.heightBox,

                                              // Total Row

                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      mainHeading(
                                                          text: "Total"),
                                                      subHeading(
                                                          text:
                                                              "Next payment will charge 10th \nof January,2023")
                                                    ],
                                                  ),
                                                  mainHeading(text: "\$126.15")
                                                ],
                                              ),
                                            ],
                                          ).p(8),
                                        ).pOnly(right: 5.0),
                                      ),
                                    ],
                                  ),

                                  10.heightBox,

                                  // Pay Button
                                  Row(
                                    children: [
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  60, 97, 229, 1),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "PAY NOW",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ).pOnly(right: 5.0),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
