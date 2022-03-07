import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class MotorScreen extends StatefulWidget {
  const MotorScreen({Key? key}) : super(key: key);

  @override
  _MotorScreenState createState() => _MotorScreenState();
}

class _MotorScreenState extends State<MotorScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.03,
              left: size.width * 0.05,
              right: size.width * 0.05),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Farming',
                        style: TextStyle(
                            fontSize: size.height * 0.05,
                            fontWeight: FontWeight.w900),
                      ),
                      Container(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: size.height * 0.05,
                                width: size.width * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                child: Center(
                                  child: Image.asset("assets/grid.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: size.height * 0.05,
                                width: size.width * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                child: Center(
                                  child: Image.asset("assets/setting.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Motors",
                        style: TextStyle(
                            fontSize: size.height * 0.04,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: size.height * 0.6,
                        width: size.width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(30),
                                // height: size.height * 0.15,
                                width: size.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Color(0xffECF0F3),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(8.0, 8.0),
                                      blurRadius: 9.0,
                                      spreadRadius: 1,
                                    ),
                                    BoxShadow(
                                      color: Colors.white.withOpacity(0.9),
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 7.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.04,
                                                width: size.width * 0.07,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.white
                                                          .withOpacity(0.5),
                                                      Colors.black12
                                                          .withOpacity(0.1),
                                                    ],
                                                    begin: FractionalOffset(
                                                        0.6, 1.0),
                                                    end: FractionalOffset(
                                                        -1.6, 0.0),

                                                    stops: [
                                                      0.1,
                                                      0.9,
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "R",
                                                    style: TextStyle(
                                                      fontSize: size.height*0.011,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors
                                                            .red.shade800),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text('<Data>'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.04,
                                                width: size.width * 0.07,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.white
                                                          .withOpacity(0.5),
                                                      Colors.black12
                                                          .withOpacity(0.1),
                                                    ],
                                                    begin: FractionalOffset(
                                                        0.6, 1.0),
                                                    end: FractionalOffset(
                                                        -1.6, 0.0),

                                                    stops: [
                                                      0.1,
                                                      0.9,
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Y",
                                                    style: TextStyle(
                                                        fontSize: size.height*0.011,
                                                        fontWeight:
                                                        FontWeight.w700,
                                                        color: Colors
                                                            .yellow.shade800),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text('<Data>'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.04,
                                                width: size.width * 0.07,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.white
                                                          .withOpacity(0.5),
                                                      Colors.black12
                                                          .withOpacity(0.1),
                                                    ],
                                                    begin: FractionalOffset(
                                                        0.6, 1.0),
                                                    end: FractionalOffset(
                                                        -1.6, 0.0),

                                                    stops: [
                                                      0.1,
                                                      0.9,
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "G",
                                                    style: TextStyle(
                                                        fontSize: size.height*0.011,
                                                        fontWeight:
                                                        FontWeight.w700,
                                                        color: Colors
                                                            .green.shade800),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text('<Data>'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Units",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "<Data>",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(30),
                                // height: size.height * 0.19,
                                width: size.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Color(0xffECF0F3),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(8.0, 8.0),
                                      blurRadius: 9.0,
                                      spreadRadius: 1,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 7.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Running time",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: size.height * 0.02),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Today",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Container(
                                            height: size.height * 0.03,
                                            width: size.width * 0.2,
                                            decoration: BoxDecoration(
                                              color: Color(0xffECF0F3),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  offset: Offset(8.0, 8.0),
                                                  blurRadius: 9.0,
                                                  spreadRadius: 1,
                                                ),
                                                BoxShadow(
                                                  color: Colors.white,
                                                  offset: Offset(-4.0, -4.0),
                                                  blurRadius: 7.0,
                                                  spreadRadius: 1.0,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                "1.25hrs",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.04,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "This Month",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Container(
                                            height: size.height * 0.03,
                                            width: size.width * 0.2,
                                            decoration: BoxDecoration(
                                              color: Color(0xffECF0F3),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  offset: Offset(8.0, 8.0),
                                                  blurRadius: 9.0,
                                                  spreadRadius: 1,
                                                ),
                                                BoxShadow(
                                                  color: Colors.white,
                                                  offset: Offset(-4.0, -4.0),
                                                  blurRadius: 7.0,
                                                  spreadRadius: 1.0,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                "1.25hrs",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          width: size.width * 0.6,
                          decoration: BoxDecoration(
                            color: Color(0xffECF0F3),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.transparent),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(3.0, 3.0),
                                blurRadius: 8.0,
                                spreadRadius: 1,
                              ),
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, -5.0),
                                blurRadius: 7.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ConfirmationSlider(
                              backgroundShape: BorderRadius.circular(40),
                              height: size.height * 0.07,
                              width: size.width * 0.6,
                              text: "Slid to off all",
                              backgroundColorEnd: Colors.white,
                              backgroundColor: Colors.white,
                              shadow: BoxShadow(spreadRadius: -1),
                              sliderButtonContent: Icon(
                                Icons.power_settings_new_rounded,
                                color: Colors.white54,
                              ),
                              foregroundColor: Color(0xff374957),
                              onConfirmation: () {}),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
