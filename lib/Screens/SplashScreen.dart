import 'dart:async';

import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset("assets/splash.png"),
    );
  }

  @override
  void initState() {
    Timer(Duration(seconds: 3), () async {
      Navigator.of(context).pushReplacementNamed('/Walkthrough');
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // String MobileNumber = prefs.getString(Session.CustomerPhoneNo);
      // String Type = prefs.getString(Session.type);
      // print(Type);
      // print(MobileNumber);
      // if (MobileNumber == null) {
      //   //Navigator.pushReplacementNamed(context, '/LoginScreen');
      //   Navigator.pushReplacementNamed(context, '/GuestDashBoard');
      // } else {
      //   Navigator.pushReplacementNamed(context, '/HomePage');
      // }
    });
  }
}
