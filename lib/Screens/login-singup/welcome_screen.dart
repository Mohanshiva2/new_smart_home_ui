import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:new_smart_home_ui/Screens/login-singup/singup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffECF0F3),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height*0.09),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Color(0xffECF0F3),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 1.0,
                    spreadRadius: 0.4,
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
                child: Image.asset(
                  "assets/ONWARDS-logoai.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: size.height*0.2),
                child: Column(
                  children: [
                    Image.asset("assets/Vector.png",scale: 2.5,),
                    SizedBox(height: size.height*0.04,),
                    Text("Welcome",style: TextStyle(fontSize: size.height*0.028,fontWeight: FontWeight.bold),),
                    SizedBox(height: size.height*0.02,),
                    Text("Account created Successfully",style: TextStyle(fontSize: size.height*0.028  ,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
