import 'package:flutter/material.dart';
import 'Static/importfiles.dart';

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
        "/LoginForm":(context) => LoginForm(),
        "/SignUpForm":(context) => SignUpForm(),
        "/DeliveryDetailScreen":(context) => DeliveryDetailScreen(),
      },
    );

  }
}
