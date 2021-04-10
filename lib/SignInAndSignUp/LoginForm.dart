import 'package:flutter/material.dart';

import '../Static/importfiles.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> with TickerProviderStateMixin {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _mobileno = TextEditingController();
  TextEditingController _otp1 = TextEditingController();
  TextEditingController _otp2 = TextEditingController();
  TextEditingController _otp3 = TextEditingController();
  TextEditingController _otp4 = TextEditingController();
  TextEditingController _otp5 = TextEditingController();
  TextEditingController _otp6 = TextEditingController();
  bool animatevalue = true;
  int userrole = 1;
  bool otpformvisible = false;
  bool standartformvisible = true,otptextvisible = false,btnsendotp = true;
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
              height: size.height * 0.25,
              child: Image.asset(
                "assets/splash.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: size.height * 0.11,
              child: Column(
                children: [
                  Image.asset("assets/usericon.png",
                      fit: BoxFit.cover, height: size.height * 0.08),
                  SizedBox(
                    height: 3.0,
                  ),
                  CustomTitleText(
                    name: "Driver",
                    fontsize: 16.0,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
                width: size.width,
                margin: EdgeInsets.symmetric(horizontal: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomTitleText(
                      name: "Login",
                      fontsize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                    CustomTitleText(
                      name: "Login account quickly to manage orders",
                      fontsize: 14.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: appPrimaryMaterialColor),
                        width: size.width * 0.91,
                        // height: MediaQuery.of(context).size.height * 0.05,
                        height: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            animatevalue
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        animatevalue = false;
                                        userrole = 1;
                                        standartformvisible = false;
                                        otpformvisible = true;
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SlideTransition(
                                          position: Tween<Offset>(
                                            begin: const Offset(0.0, 0.0),
                                            end: const Offset(0.0, 0.0),
                                          ).animate(CurvedAnimation(
                                            parent: AnimationController(
                                              duration: const Duration(
                                                  milliseconds: 100),
                                              vsync: this,
                                            )..forward(),
                                            curve: Curves.easeInCubic,
                                          )),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.45,
                                            // height: MediaQuery.of(context).size.height * 0.05,
                                            height: 50,
                                            margin: EdgeInsets.fromLTRB(
                                                4.0, 4.0, 0.0, 4.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                                color: AppColors.white_color
                                                    .withOpacity(0.8)),
                                            child: Center(
                                              child: Text(
                                                "Standard",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.45,
                                          // height: MediaQuery.of(context).size.height * 0.05,
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              "Mobile/OTP",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.white_color),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ))
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        animatevalue = true;
                                        userrole = 0;
                                        standartformvisible = true;
                                        otpformvisible = false;
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.45,
                                          height: 50,
                                          // height: MediaQuery.of(context).size.height * 0.05,
                                          child: Center(
                                            child: Text(
                                              "Standard",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.white_color),
                                            ),
                                          ),
                                        ),
                                        SlideTransition(
                                          position: Tween<Offset>(
                                            begin: const Offset(0.0, 0.0),
                                            end: const Offset(0.0, 0.0),
                                          ).animate(CurvedAnimation(
                                            parent: AnimationController(
                                              duration: const Duration(
                                                  milliseconds: 100),
                                              vsync: this,
                                            )..forward(),
                                            curve: Curves.easeInCubic,
                                          )),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.45,
                                            height: 50,
                                            // height: MediaQuery.of(context).size.height * 0.05,
                                            margin: EdgeInsets.fromLTRB(
                                                0.0, 4.0, 4.0, 4.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                                color: AppColors.white_color
                                                    .withOpacity(0.8)),
                                            child: Center(
                                              child: Text(
                                                "Mobile/OTP",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ],
                        )),
                    SizedBox(
                      height: 15.0,
                    ),
                    //Standard Login section
                    Visibility(
                      visible: standartformvisible,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            CustomTextField(
                              textcontroller: _email,
                              hint: "Email",
                              obtext: false,
                              maxline: 1,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              textcontroller: _password,
                              hint: "Password",
                              obtext: false,
                              maxline: 1,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                CustomTitleText(
                                  name: "Forgot Password",
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            CustomButton(
                              height: 50.0,
                              title: "Login",
                              width: size.width,
                              textcolor: AppColors.white_color,
                              btncolor: appPrimaryMaterialColor,
                              elevition: 0.0,
                              btnradius: 5.0,
                              btntextsize: 15.0,
                              ontap: () {
                                print("login");
                                Navigator.of(context).pushNamed('/BottomBar');
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    //mobile OTP Login section
                    Visibility(
                      visible: otpformvisible,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            CustomTextField(
                              textcontroller: _mobileno,
                              hint: "Mobile number",
                              obtext: false,
                              maxline: 1,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Visibility(
                              visible: btnsendotp,
                              child: CustomButton(
                                height: 50.0,
                                title: "Send OTP",
                                width: size.width,
                                textcolor: AppColors.white_color,
                                btncolor: appPrimaryMaterialColor,
                                elevition: 0.0,
                                btnradius: 5.0,
                                btntextsize: 15.0,
                                ontap: () {
                                  setState(() {
                                    btnsendotp = false;
                                    otptextvisible = true;
                                  });
                                  print("login");
                                  // Navigator.of(context).pushNamed('/LoginForm');
                                },
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Visibility(
                              visible: otptextvisible,
                                child: Container(
                                  width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomTitleText(
                                    name: "please enter your OTP",
                                    fontsize: 15.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(height: 10.0,),
                                  Container(
                                    width: size.width *0.8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,

                                      children: [
                                        CustomTextField(
                                          width: size.width * 0.1,
                                          textcontroller: _otp1,
                                          obtext: false,
                                          maxline: 1,
                                          maxlenght: 1,
                                          digit: "1",
                                        ),
                                        CustomTextField(
                                          width: size.width * 0.1,
                                          textcontroller: _otp2,
                                          obtext: false,
                                          maxline: 1,
                                          maxlenght: 1,
                                          digit: "1",
                                        ),
                                        CustomTextField(
                                          width: size.width * 0.1,
                                          textcontroller: _otp3,
                                          obtext: false,
                                          maxline: 1,
                                          maxlenght: 1,
                                          digit: "1",
                                        ),
                                        CustomTextField(
                                          width: size.width * 0.1,
                                          textcontroller: _otp4,
                                          obtext: false,
                                          maxline: 1,
                                          maxlenght: 1,
                                          digit: "1",
                                        ),
                                        CustomTextField(
                                          width: size.width * 0.1,
                                          textcontroller: _otp5,
                                          obtext: false,
                                          maxline: 1,
                                          maxlenght: 1,
                                          digit: "1",
                                        ),
                                        CustomTextField(
                                          width: size.width * 0.1,
                                          textcontroller: _otp6,
                                          obtext: false,
                                          maxline: 1,
                                          maxlenght: 1,
                                          digit: "1",
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15.0,),
                                  CustomButton(
                                    height: 50.0,
                                    title: "Verify OTP",
                                    width: size.width,
                                    textcolor: AppColors.white_color,
                                    btncolor: appPrimaryMaterialColor,
                                    elevition: 0.0,
                                    btnradius: 5.0,
                                    btntextsize: 15.0,
                                    ontap: () {
                                      print("login");
                                      Navigator.of(context).pushNamed('/BottomBar');
                                    },
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
