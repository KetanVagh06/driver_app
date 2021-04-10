import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Static/importfiles.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  TextEditingController _fname = TextEditingController();
  TextEditingController _lname = TextEditingController();
  TextEditingController _countrycode = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _mobileno = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  TextEditingController _houseno = TextEditingController();
  TextEditingController _streetname = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _state = TextEditingController();
  TextEditingController _pincode = TextEditingController();
  TextEditingController _country = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: size.height * 0.25,
                child: Image.asset("assets/splash.png",fit: BoxFit.cover,),
              ),
              Container(
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomTitleText(
                        name: "Driver Sign Up",
                        fontsize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                      CustomTitleText(
                        name: "Create account quickly to manage orders",
                        fontsize: 14.0,
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.grey_color.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                              child: CustomTitleText(
                                name: "---Personal Info---",
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CustomTextField(
                                  width: size.width * 0.45,
                                  textcontroller: _fname,
                                  hint: "First Name",
                                  obtext: false,
                                  maxline: 1,
                                ),
                                CustomTextField(
                                  width: size.width * 0.45,
                                  textcontroller: _lname,
                                  hint: "Last Name",
                                  obtext: false,
                                  maxline: 1,
                                ),
                              ],
                            ),
                            SizedBox(height: 9.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CustomTextField(
                                  width: size.width * 0.2,
                                  textcontroller: _countrycode,
                                  hint: "  +91",
                                  digit: "1",
                                  obtext: false,
                                  maxline: 1,
                                ),
                                CustomTextField(
                                  width: size.width * 0.7,
                                  textcontroller: _mobileno,
                                  hint: "Mobile Number",
                                  digit: "1",
                                  obtext: false,
                                  maxline: 1,
                                ),
                              ],
                            ),
                            SizedBox(height: 9.0,),
                            CustomTextField(
                              textcontroller: _email,
                              hint: "Email",
                              obtext: false,
                              maxline: 1,
                            ),
                            SizedBox(height: 9.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CustomTextField(
                                  width: size.width * 0.45,
                                  textcontroller: _password,
                                  hint: "Password",
                                  obtext: true,
                                  maxline: 1,
                                ),
                                CustomTextField(
                                  width: size.width * 0.45,
                                  textcontroller: _confirmPassword,
                                  hint: "Confirm Password",
                                  obtext: true,
                                  maxline: 1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.grey_color.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                              child: CustomTitleText(
                                name: "---Address Info---",
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CustomTextField(
                                  width: size.width * 0.3,
                                  textcontroller: _houseno,
                                  hint: "House NO",
                                  obtext: false,
                                  maxline: 1,
                                ),
                                CustomTextField(
                                  width: size.width * 0.6,
                                  textcontroller: _streetname,
                                  hint: "Street Name",
                                  obtext: false,
                                  maxline: 1,
                                ),
                              ],
                            ),
                            SizedBox(height: 9.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CustomTextField(
                                  width: size.width * 0.45,
                                  textcontroller: _city,
                                  hint: "City",
                                  obtext: false,
                                  maxline: 1,
                                ),
                                CustomTextField(
                                  width: size.width * 0.45,
                                  textcontroller: _state,
                                  hint: "State",
                                  obtext: false,
                                  maxline: 1,
                                ),
                              ],
                            ),
                            SizedBox(height: 9.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CustomTextField(
                                  width: size.width * 0.45,
                                  textcontroller: _pincode,
                                  hint: "Pincode",
                                  obtext: false,
                                  maxline: 1,
                                ),
                                CustomTextField(
                                  width: size.width * 0.45,
                                  textcontroller: _country,
                                  hint: "Country",
                                  obtext: false,
                                  maxline: 1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      CustomTitleText(
                        name: "Auto Recommendation",
                        fontsize: 17.0,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(height: 9.0,),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30.0,width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: AppColors.green_color.withOpacity(0.7),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.green_color.withOpacity(0.6),
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 9.0,
                                  spreadRadius: 0.1,
                                ),
                              ]
                            ),
                            child: Center(
                              child: CustomTitleText(
                                name: "7.6 Miters",
                                fontWeight: FontWeight.w500,
                                textcolor: AppColors.white_color,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            height: 30.0,width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: AppColors.green_color.withOpacity(0.7),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.green_color.withOpacity(0.6),
                                    offset: const Offset(
                                      5.0,
                                      5.0,
                                    ),
                                    blurRadius: 9.0,
                                    spreadRadius: 0.1,
                                  ),
                                ]
                            ),
                            child: Center(
                              child: CustomTitleText(
                                name: "Platform",
                                fontWeight: FontWeight.w500,
                                textcolor: AppColors.white_color,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            height: 30.0,width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: AppColors.green_color.withOpacity(0.7),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.green_color.withOpacity(0.6),
                                    offset: const Offset(
                                      5.0,
                                      5.0,
                                    ),
                                    blurRadius: 9.0,
                                    spreadRadius: 0.1,
                                  ),
                                ]
                            ),
                            child: Center(
                              child: CustomTitleText(
                                name: "Van",
                                fontWeight: FontWeight.w500,
                                textcolor: AppColors.white_color,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                        ],
                      ),
                      SizedBox(height: 15.0,),
                      CustomButton(
                        height: 50.0,
                        title: "Sign UP",
                        width: size.width,
                        textcolor: AppColors.white_color,
                        btncolor: appPrimaryMaterialColor,
                        elevition: 0.0,
                        btnradius: 5.0,btntextsize: 15.0,
                        ontap: (){
                          print("login");
                          Navigator.of(context).pushNamed('/BottomBar');
                        },
                      ),
                      SizedBox(height: 15.0,),
                    ],
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
