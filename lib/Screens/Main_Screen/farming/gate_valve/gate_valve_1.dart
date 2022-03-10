import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






class ValveDetails extends StatelessWidget {

  final int index;
  const ValveDetails({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
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
                              fontSize: size.height * 0.03,
                              fontWeight: FontWeight.w900),
                        ),
                        Container(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: size.height * 0.02,
                                  width: size.width * 0.05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                  ),
                                  child: Center(
                                    child:Image.asset("assets/grid.png")
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: size.height * 0.02,
                                  width: size.width * 0.05,
                                  decoration: BoxDecoration(
                                    // borderRadius: BorderRadius.circular(300),
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
                          "Gate Valve ${index + 1}",
                          style: TextStyle(
                              fontSize: size.height * 0.023,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          height: size.height * 0.6,
                          width: size.width * 1,
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Container(
                                padding: EdgeInsets.all(30),
                                height: size.height * 0.23,
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
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Gate Valve ${index + 1}",
                                            style: TextStyle(
                                                fontSize: size.height * 0.019,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // ToggleSwitch(
                                          //   totalSwitches: 2,
                                          //   minHeight: size.height * 0.038,
                                          //   minWidth: size.width * 0.06,
                                          //   cornerRadius: 9,
                                          //   activeBgColor: [Color(0xff374957)],
                                          //   activeFgColor: Colors.white,
                                          //   inactiveFgColor: Colors.white,
                                          //   inactiveBgColor: Colors.white,
                                          //   borderColor: [Colors.black12],
                                          //   borderWidth: 1,
                                          //   onToggle: null,
                                          // ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      height: size.height * 0.09,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Run time:",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize:
                                                      size.height * 0.018 ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: size.width*0.03,),
                                          Container(
                                            width: size.width * 0.4,
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Today",
                                                        style: TextStyle(
                                                          color:
                                                          Color(0xff484848),
                                                        ),
                                                      ),
                                                      Text(
                                                        "3 hrs",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "This month",
                                                        style: TextStyle(
                                                          color:
                                                          Color(0xff484848),
                                                        ),
                                                      ),
                                                      Text(
                                                        "90 hrs",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.05,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
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


