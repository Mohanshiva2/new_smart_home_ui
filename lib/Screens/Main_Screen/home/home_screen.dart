import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome home',
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
                          height: size.height * 0.05,
                          width: size.width * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.grid_view,
                              color: Color(0xff374957),
                              size: size.height * 0.03,
                            ),
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
                            child: Icon(
                              Icons.settings,
                              color: Color(0xff374957),
                              size: size.height * 0.03,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
