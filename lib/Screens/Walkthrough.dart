import 'package:driver_app/Constant/Colors.dart';
import 'package:flutter/material.dart';

class Walkthrough extends StatefulWidget {
  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 45.0,),
          Image.asset("assets/splash.png"),
          Text("Welcome to Addeur",style: TextStyle(fontSize: 29.0,color: appPrimaryMaterialColor,fontWeight: FontWeight.bold),),
          SizedBox(height: 45.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text("We strive to provide entreprises and indiviul and affordable, efficient and eco-friendly medium-long distance logstics solution! Also, help our truckers earn more!",
                style: TextStyle(fontSize: 19.0),textAlign: TextAlign.center,),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.double_arrow_rounded),
        onPressed: (){
          Navigator.of(context).pushReplacementNamed('/LoginScreen');
        },
      ),
    );
  }
}
