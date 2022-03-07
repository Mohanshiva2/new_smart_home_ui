import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.035,
            left: size.width * 0.05,
            right: size.width * 0.05),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Device',
                style: TextStyle(
                    fontSize: size.height * 0.03, fontWeight: FontWeight.w900),
              ),
              // Container(
              //   height: 35,
              //   width: 35,
              //   decoration: BoxDecoration(
              //     color: Color(0xff374957),
              //     borderRadius: BorderRadius.circular(300),
              //   ),
              //   child: Center(
              //     child: Icon(
              //       Icons.add,
              //       color: Colors.white,
              //       size: size.height * 0.02,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
