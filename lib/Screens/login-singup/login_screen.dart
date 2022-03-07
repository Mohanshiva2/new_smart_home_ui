import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:new_smart_home_ui/Screens/login-singup/singup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffECF0F3),
      body: Container(
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
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Color(0xffACACAC),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      TextField(
                        obscureText: true,

                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Color(0xffACACAC),
                          ),
                          hintText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
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
                  Text("New user?"),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SingupScreen()));
                      });
                    },
                    child: Text(
                      "Create account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
