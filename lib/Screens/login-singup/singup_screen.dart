import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login_screen.dart';
import 'otp_screen.dart';

class SingupScreen extends StatefulWidget {
  @override
  _SingupScreenState createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  Color(0xffECF0F3),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: size.height*0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
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
              ),
              Container(
                height: size.height * 0.08,
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  // top: size.height * 0.01,
                    left: size.width * 0.08,
                    right: size.width * 0.08),
                // height: size.height * 0.33,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffECF0F3),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 0.7,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              color: Color(0xffACACAC),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        TextField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Phone number',
                            hintStyle: TextStyle(
                              color: Color(0xffACACAC),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Color(0xffACACAC),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextField(
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Color(0xffACACAC),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),TextField(
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                              color: Color(0xffACACAC),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen()));
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 250,
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
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 50,
                width: 300,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(width: size.width*0.08,),
                    // Container(
                    //   // child: Lottie.asset("assets/75752-google-icon.json",fit: BoxFit.fill,),
                    //   height: 40,width: 40,
                    //   color: Colors.transparent,
                    // ),
                    // SizedBox(width: size.width*0.08,),
                    Text(
                      'Login with Google',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Existing user? "),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.pop(context, MaterialPageRoute(builder: (context)=>LoginScreen(),),);
                        });
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
