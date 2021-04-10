import 'package:flutter/material.dart';
import '../Static/importfiles.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String appName,packageName,version,buildNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getappinfo();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: <Widget>[
              Container(
                height: size.height * 0.37,
                  child: Image.asset("assets/splash.png",fit: BoxFit.cover,),
              ),
              Container(
                height: size.height * 0.15,
                child: Column(
                  children: [
                    Image.asset("assets/usericon.png",fit: BoxFit.cover,height: size.height * 0.12),
                    SizedBox(height: 3.0,),
                    CustomTitleText(
                        name : "Driver",
                      fontsize: 16.0,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                width: size.width,
                margin: EdgeInsets.symmetric(horizontal: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomTitleText(
                      name: "Account",
                      fontsize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                    CustomTitleText(
                      name: "Login create account quickly to manage orders",
                      fontsize: 14.0,
                    )
                  ],
                )
              ),
              SizedBox(height: size.height * 0.06),
              CustomButton(
                height: 50.0,
                title: "Login",
                width: size.width,
                textcolor: AppColors.white_color,
                btncolor: appPrimaryMaterialColor,
                elevition: 0.0,
                btnradius: 5.0,btntextsize: 15.0,
                ontap: (){
                  print("login");
                  Navigator.of(context).pushNamed('/LoginForm');
                },
              ),
              SizedBox(height: size.height * 0.04),
              CustomButton(
                height: 50.0,
                title: "Sign Up",
                width: size.width,
                textcolor: AppColors.white_color,
                btncolor: appPrimaryMaterialColor,
                elevition: 0.0,
                btnradius: 5.0,btntextsize: 15.0,
                ontap: (){
                  Navigator.of(context).pushNamed('/SignUpForm');
                  print("Sign Up");
                },
              ),
              SizedBox(height: 20.0,),
              Container(
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CustomTitleText(
                      name: "Version ${version}",
                      fontsize: 13.0,
                      textcolor: AppColors.grey_color,
                    )
                  ],
                ),
              )



            ],
          ),
        ),
      ),
    );
  }

  getappinfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appName = packageInfo.appName;
      packageName = packageInfo.packageName;
      version = packageInfo.version;
      buildNumber = packageInfo.buildNumber;
    });
  }
}
