import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutinesSecondScreen extends StatefulWidget {
  const RoutinesSecondScreen({Key? key}) : super(key: key);

  @override
  _RoutinesSecondScreenState createState() => _RoutinesSecondScreenState();
}

class _RoutinesSecondScreenState extends State<RoutinesSecondScreen> {
  bool checkboxval = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(

              margin: EdgeInsets.only(
                  top: size.height * 0.035,
                  left: size.width * 0.05,
                  right: size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create new Routine',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: size.height*0.03,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          'Create new routines to do multiple works at once and \nschedule them to do daily',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Center(
                    child: Container(
                      // margin: EdgeInsets.only(top: 7),
                      height: size.height * 0.10,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Color(0xffECF0F3),
                        borderRadius: BorderRadius.circular(30),
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
                      child: Padding(
                        padding: const EdgeInsets.all(29),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Routine name',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),

                  // Switch Container......
                  Container(
                    width: double.infinity,
                    height: size.height * 0.55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select Device",
                          style: TextStyle(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w700),
                        ),

                        //check and dropdown.....................................
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Center(
                                      child: Transform.scale(
                                        scale: 1,
                                        child: Checkbox(
                                          value: checkboxval,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              checkboxval = value!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Make it schedule',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(right: size.width * 0.03),
                                height: size.height * 0.04,
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  color: Color(0xffECF0F3),
                                  borderRadius: BorderRadius.circular(30),
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
                                  child: DropDownButton(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          width: size.width * 1,
                          height: size.height * 0.39,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "Bulb",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "Tube light",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "Fan",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "Fan 2",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "Motor",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "Floor light",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "Curtain",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "TV",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "AC",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "Home theater",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "ceiling light",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .16,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffECF0F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black12,
                                                      offset: Offset(8.0, 8.0),
                                                      blurRadius: 9.0,
                                                      spreadRadius: 1,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset:
                                                          Offset(-4.0, -4.0),
                                                      blurRadius: 7.0,
                                                      spreadRadius: 1.0,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.lightbulb_rounded,
                                                    size: 30,
                                                    color: Color(
                                                      0xff374957,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.01,
                                              ),
                                              Text(
                                                "Bulb 2",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        size.height * 0.013),
                                              )
                                            ],
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
                  SizedBox(
                    height: size.height * 0.01,
                  ),

                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff374957),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Done",
                            style: TextStyle(
                                fontSize: size.height * 0.020,
                                color: Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropDownButton extends StatefulWidget {
  const DropDownButton({
    Key? key,
  }) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String? _value;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Center(
        child: DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              child: Text('Item 1'),
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('Item 2'),
              value: 'two',
            ),
            DropdownMenuItem<String>(
              child: Text('Item 3'),
              value: 'three',
            ),
          ],
          onChanged: (value) {
            setState(() {
              _value = value!;
            });
          },
          hint: Text('Select Item'),
          value: _value,
        ),
      ),
    );
  }
}
