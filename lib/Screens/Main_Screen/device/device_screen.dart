import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Add_Device/QR_Scanner.dart';

class Device extends StatefulWidget {
  const Device({Key? key}) : super(key: key);

  @override
  _DeviceState createState() => _DeviceState();
}

class _DeviceState extends State<Device> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffECF0F3),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add Device',
                  style: TextStyle(
                      fontSize: size.height * 0.03,
                      fontWeight: FontWeight.w900),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QrScanning(),
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: size.height * 0.03,
                    width: size.width * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                    ),
                    child: Center(child: Image.asset("assets/add Icon.png")),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height*0.05,
            ),
            SizedBox(
              height: size.height*0.3,
              width: size.width*0.5,
              child: Image.asset("assets/image.png"),
            ),

            SizedBox(
              child: Text(
                "No devices linked",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: size.height*0.02,
                  fontFamily: 'Avenir-Book.ttf',
                ),
              ),
            )
           



          ],
        ),
      ),
    );
  }
}
