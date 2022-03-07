import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_smart_home_ui/Screens/Main_Screen/device/Add_Device/QR_Scanner.dart';
import 'package:new_smart_home_ui/Screens/NaveBar/tabbar.dart';
import 'package:new_smart_home_ui/Screens/login-singup/welcome_screen.dart';

import 'Screens/login-singup/login_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {

    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        scaffoldBackgroundColor:  Color(0xffECF0F3),
      ),
      home: TabbBar(),
    );
  }
}
