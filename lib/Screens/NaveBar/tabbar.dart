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
  int _selectedIndex = 0;

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_selectedIndex].currentState!.maybePop();
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
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
            borderRadius: BorderRadius.all(Radius.circular(30),),
            child: ClayContainer(
              curveType: CurveType.concave,
              depth: 50,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                // elevation: 1.0,
                // selectedItemColor: Colors.black87,
                // unselectedItemColor: Colors.black87,
                currentIndex: _selectedIndex,
                onTap: (index) {
                  setState(() {
                    this._selectedIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/home.png",scale: 3.0, ),
                    label: 'Home',
                    activeIcon: Image.asset("assets/home.png", color: Colors.orange, scale: 3.0,),
                  ),
                  BottomNavigationBarItem(
                    icon:Image.asset("assets/device.png",scale: 3.0, ),
                    label: 'Devices',
                    activeIcon: Image.asset("assets/device.png",scale: 3.0, color: Colors.orange,),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/farming.png",scale: 3.0, ),
                    label: 'Farming',
                    activeIcon:Image.asset("assets/farming.png",scale: 3.0, color: Colors.orange,),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/routine.png",scale: 3.0, ),
                    label: 'Routines',
                    activeIcon: Image.asset("assets/routine.png",scale: 3.0, color: Colors.orange,),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            // renderView(
            //   0,
            //   Home(),
            // ),
            // renderView(
            //   1,
            //   Device(),
            // ),
            // renderView(
            //     2,
            //     Farming(),
            // ),
            // renderView(
            //   3,
            //   Routines(),
            //   ).
            _buildOffstageNavigator(0),
            _buildOffstageNavigator(1),
            _buildOffstageNavigator(2),
            _buildOffstageNavigator(3),
          ],
        ),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          Home(),
          Device(),
          Farming(),
          Routines(),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name]!(context),
          );
        },
      ),
    );
  }
//
// Widget renderView(int tabIndex, Widget view) {
//   return IgnorePointer(
//     ignoring: _selectedTab != tabIndex,
//     child: Opacity(
//       opacity: _selectedTab == tabIndex ? 1 : 0,
//       child: view,
//     ),
//   );
// }
}
