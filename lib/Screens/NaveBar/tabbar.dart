import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Main_Screen/device/device_screen.dart';
import '../Main_Screen/farming/farming.dart';
import '../Main_Screen/home/home_screen.dart';
import '../Main_Screen/routines/routines_fistscreen.dart';

class TabbBar extends StatefulWidget {
  const TabbBar({Key? key}) : super(key: key);

  @override
  _TabbBarState createState() => _TabbBarState();
}

class _TabbBarState extends State<TabbBar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xffE5E5E5),
          borderRadius: BorderRadius.circular(40),
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
        margin: EdgeInsets.only(
            bottom: size.height * 0.04,
            left: size.width * 0.09,
            right: size.width * 0.09),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: ClayContainer(
            curveType: CurveType.concave,
            depth: 50,
            child: BottomNavigationBar(
              elevation: 1.0,
              selectedItemColor: Colors.black87,
              unselectedItemColor: Colors.black87,
              currentIndex: _selectedTab,
              onTap: (index) {
                setState(() {
                  this._selectedTab = index;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard_rounded), label: 'Devices'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.grass),
                  label: 'Farming',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_time_filled_rounded),
                  label: 'Routines',
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          renderView(
            0,
            Home(),
          ),
          renderView(
            1,
            Device(),
          ),
          renderView(
              2,
              Farming(),
          ),
          renderView(
            3,
            Routines(),
          ),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
