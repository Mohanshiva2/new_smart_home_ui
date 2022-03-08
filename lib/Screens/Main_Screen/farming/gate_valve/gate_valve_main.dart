import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'gate_valve_1.dart';

class GateValve extends StatefulWidget {
   GateValve({Key? key}) : super(key: key);

  @override
  _GateValveState createState() => _GateValveState();
}

class _GateValveState extends State<GateValve> {
  final bool values = false;

  bool isToggled = false;

  final List dummyList = List.generate(10, (index) {
    return {
      "id": "Gate Valve ${index + 1}",
      "title": "This is the title $index",
      "subtitle": "This is the subtitle $index"
    };
  });

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
                Row(
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
                                child:Image.asset("assets/grid.png"),
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
                                child:Image.asset("assets/setting.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(


                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gate Valves",
                        style: TextStyle(
                            fontSize: size.height * 0.04,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(

                        height: size.height*0.5,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: dummyList.length,
                                itemBuilder: (BuildContext context, index) =>
                                    Container(
                                      margin: EdgeInsets.all(20),
                                      height: size.height * 0.07,
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
                                      child: Center(
                                        child: ListTile(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(
                                                builder: (context)=> ValveDetails(index: index,)
                                            ) );
                                            print('$index');
                                          },
                                          leading: Text(dummyList[index]["id"].toString(),style: TextStyle(
                                            fontWeight: FontWeight.w600,fontSize: size.height*0.02
                                          ),),
                                          trailing: ToggleSwitch(
                                            totalSwitches: 2,
                                            minHeight: size.height * 0.2,
                                            minWidth: 30,
                                            cornerRadius: 9,
                                            activeBgColor: [Color(0xff374957)],
                                            activeFgColor: Colors.white,
                                            inactiveFgColor: Colors.white,
                                            inactiveBgColor: Colors.white,
                                            borderColor: [Colors.black12],
                                            borderWidth: 1,
                                            onToggle: (bool) {
                                              isToggled = true;
                                            },
                                          ),

                                        ),
                                      ),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.05,
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
                              height: size.height * 0.06,
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


