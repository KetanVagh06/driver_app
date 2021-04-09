import 'package:driver_app/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'Pages/AccountScreen.dart';
import 'Pages/BottomBar.dart';
import 'Pages/LogoutScreen.dart';
import 'Pages/OrderScreen.dart';
import 'Pages/SettingScreen.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/Walkthrough.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/":(context) => SplashScreen(),
        "/LoginScreen":(context) => LoginScreen(),
        "/BottomBar":(context) => BottomBar(),
        "/OrderScreen":(context) => OrderScreen(),
        "/SettingScreen":(context) => SettingScreen(),
        "/AccountScreen":(context) => AccountScreen(),
        "/LogoutScreen":(context) => LogoutScreen(),
        "/Walkthrough":(context) => Walkthrough(),
      },
    );

  }
}
