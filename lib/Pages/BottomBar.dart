import 'package:driver_app/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'AccountScreen.dart';
import 'LogoutScreen.dart';
import 'OrderScreen.dart';
import 'SettingScreen.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    OrderScreen(),
    SettingScreen(),
    AccountScreen(),
    LogoutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (_currentIndex != 0) {
          setState(() {
            _currentIndex = 0;
          });
        } else {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _widgetOptions[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          elevation: 1.0,
          currentIndex: 0,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                title: Text("Home"),
                icon: Icon(
                  Icons.home,
                  color: _currentIndex == 0
                      ? appPrimaryMaterialColor
                      : appPrimaryMaterialColor[300],
                )),
            BottomNavigationBarItem(
                title: Text("Setting"),
                icon: Icon(
                  Icons.settings_outlined,
                  color: _currentIndex == 1
                      ? appPrimaryMaterialColor
                      : appPrimaryMaterialColor[300],
                )),
            BottomNavigationBarItem(
                title: Text("Account"),
                icon: Icon(
                  Icons.person,
                  color: _currentIndex == 2
                      ? appPrimaryMaterialColor
                      : appPrimaryMaterialColor[300],
                )),
            BottomNavigationBarItem(
                title: Text("Logout"),
                icon: Icon(
                  Icons.logout,
                  color: _currentIndex == 3
                      ? appPrimaryMaterialColor
                      : appPrimaryMaterialColor[300],
                )),
          ],
        ),
      ),
    );
  }
}
