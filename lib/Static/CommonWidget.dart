import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constant/Colors.dart';
import '../Static/importfiles.dart';

//common Text
class CustomTitleText extends StatefulWidget {
  String name;
  double fontsize;
  FontWeight fontWeight;
  Color textcolor;
  String fontFamily;
  TextAlign textalign;

  CustomTitleText(
      {this.name,
      this.fontsize,
      this.fontWeight,
      this.textcolor,
      this.fontFamily,
      this.textalign});

  @override
  _CustomTitleTextState createState() => _CustomTitleTextState();
}

class _CustomTitleTextState extends State<CustomTitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.name,
      style: TextStyle(
          fontSize: widget.fontsize,
          fontWeight: widget.fontWeight,
          color: widget.textcolor,
          fontFamily: widget.fontFamily),
      textAlign: widget.textalign,
    );
  }
}

//custom TextFeild

class CustomTextField extends StatefulWidget {
  TextEditingController textcontroller;
  bool obtext;
  String hint;
  Icon texticon;
  int maxline;
  Color textColor;
  double textsize;
  Function validator;
  String digit;
  double height,width;
  int maxlenght;

  CustomTextField(
      {@required this.textcontroller,
      this.texticon,
      this.obtext,
      this.hint,
      this.textColor,
      this.textsize,
        this.digit,
      this.maxline,
      this.validator,
        this.width,
        this.height,
        this.maxlenght
      });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: widget.height,width: widget.width,
      decoration: BoxDecoration(
        color: AppColors.grey_color.withOpacity(0.16),
          borderRadius: BorderRadius.circular(5.0)),
      padding: EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 0.0),
      child: TextFormField(
        keyboardType: widget.digit == null ? null :TextInputType.phone,
        obscureText: widget.obtext,
        style: TextStyle(color: widget.textColor),
        controller: widget.textcontroller,
        maxLines: widget.maxline,
          inputFormatters:[
            LengthLimitingTextInputFormatter(widget.maxlenght),
          ],
        decoration: InputDecoration(
          focusColor: widget.textColor,
          hintText: widget.hint,
          alignLabelWithHint: true,
          border: InputBorder.none
        ),
        validator: widget.validator,
      ),
    );
  }
}

//common Button

class CustomButton extends StatefulWidget {
  String title;
  Function ontap;
  double width, height, elevition;
  Color btncolor, textcolor;
  double btntextsize, btnradius;

  CustomButton(
      {this.title,
      this.ontap,
      this.width,
      this.btncolor,
      this.height,
      this.elevition,
      this.textcolor,
      this.btntextsize,
      this.btnradius});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.btnradius))),
        height: widget.height != null ? widget.height : size.height * 0.07,
        minWidth: widget.width == null ? size.width * 0.85 : widget.width,
        color: widget.btncolor,
        child: widget.title != null
            ? new Text(widget.title,
                style: new TextStyle(
                    fontSize: widget.btntextsize,
                    color: widget.textcolor,
                    fontWeight: FontWeight.bold))
            : Text(""),
        onPressed: widget.ontap);
  }
}

//btn icon
class customIconBtn extends StatefulWidget {
  String title;
  Function ontap;
  double width, height, elevition;
  Color btncolor, textcolor;
  Icon btnicon;

  customIconBtn(
      {this.title,
      this.ontap,
      this.width,
      this.btncolor,
      this.height,
      this.elevition,
      this.btnicon,
      this.textcolor});

  @override
  _customIconBtnState createState() => _customIconBtnState();
}

class _customIconBtnState extends State<customIconBtn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlatButton.icon(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      height: widget.height != null ? widget.height : size.height * 0.07,
      minWidth: widget.width == null ? size.width * 0.85 : widget.width,
      color: widget.btncolor,
      icon: widget.btnicon,
      label: widget.title != null
          ? new Text(widget.title,
              style: new TextStyle(
                  fontSize: 17.0,
                  color: widget.textcolor,
                  fontWeight: FontWeight.bold))
          : Text(""),
      onPressed: widget.ontap,
    );
  }
}

//Page Slide
class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) =>
              SlideTransition(
            transformHitTests: true,
            position: Tween<Offset>(
              begin: Offset(0, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

//Toast Message Show

// class mess {
//   toastMesssage(String message) {
//     Fluttertoast.showToast(
//         msg: message,
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: AppColors.grey_color.withOpacity(0.7),
//         textColor: Colors.black,
//         fontSize: 16.0);
//   }
// }

//Alert Conform

Future<Widget> PopComformBox(BuildContext context, Function action) {
  return showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: Text("Are you sure ?"),
      actions: [
        CupertinoDialogAction(
          child: Text(
            "Logout",
            style: TextStyle(color: Colors.red),
          ),
          onPressed: action,
        ),
        CupertinoDialogAction(
            child: Text(
              "Not now",
              style: TextStyle(),
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    ),
  );
}

//Warring Box

Future<Widget> PopWarringBox(BuildContext context, Function action1,
    Function action2, title, text, canceltext, actiontext) {
  return showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Text(
        text,
        style: TextStyle(fontSize: 16.0),
        textAlign: TextAlign.center,
      ),
      actions: [
        CupertinoDialogAction(
            child: Text(
              canceltext,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: action1),
        CupertinoDialogAction(
            child: Text(
              actiontext,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: action2)
      ],
    ),
  );
}

//image Picker pop

Future<Widget> ImagePopup(
    context, Function actioncamera, Function actiongallery) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                leading: new Icon(Icons.camera_alt),
                title: new Text('Camera'),
                onTap: actioncamera,
                // onTap: () async {
                //   _image = await ImagePicker.pickImage(
                //     source: ImageSource.camera,
                //   );
                //   Navigator.pop(context);
                //   setState(() {
                //     _profileImage = _image;
                //   });
                // }
              ),
              new ListTile(
                leading: new Icon(Icons.photo),
                title: new Text('Gallery'),
                onTap: actiongallery,
                // onTap: () async {
                //   _image = await ImagePicker.pickImage(
                //     source: ImageSource.gallery,
                //   );
                //   Navigator.pop(context);
                //   setState(() {
                //     _profileImage = _image;
                //   });
                // }
              ),
            ],
          ),
        );
      });
}

class SlideButtons extends StatefulWidget {
  Widget child;
  IconData firstIcon,secondIcon;
  Function firstAction,secondAction;
  Color firstColor,secondColor;
  SlideButtons({@required this.child,this.firstIcon,this.secondIcon,this.firstAction,this.secondAction,this.firstColor,this.secondColor});
  @override
  _SlideButtonsState createState() => _SlideButtonsState();
}

class _SlideButtonsState extends State<SlideButtons> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(

      trailing: Icon(Icons.more_vert,size: 20.0,),
        title: widget.child,
      children: [
        Container(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: widget.firstAction,
                child: Container(
                  height: 40.0,width: 150.0,
                  decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                    //   color:widget.firstColor.withOpacity(0.4),
                    // border: Border.all(color: AppColors.primay_Colors),
                    // borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: Icon(widget.firstIcon,color: widget.firstColor,),
                ),
              ),
              Container(
                width: 1,
                height: 30,
                color: AppColors.grey_color,
              ),
              InkWell(
                onTap: widget.secondAction,
                child: Container(
                  height: 40.0,width: 150.0,
                  decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      // color:widget.secondColor.withOpacity(0.4)
                  ),
                  child: Icon(widget.secondIcon,color: widget.secondColor,),
                ),
              ),
            ],
          ),
        )
      ],
    );
    // return Slidable(
    //   actionPane: SlidableDrawerActionPane(),
    //   actionExtentRatio: 0.15,
    //   child: widget.child,
    //   secondaryActions: <Widget>[
    //     IconSlideAction(
    //       color: Colors.transparent,
    //       iconWidget: Container(
    //         height: 40.0,width: 40.0,
    //         decoration: BoxDecoration(
    //             shape: BoxShape.circle,
    //             color:widget.firstColor.withOpacity(0.4)
    //         ),
    //         child: Icon(widget.firstIcon,color: widget.firstColor,),
    //       ),
    //       onTap: widget.firstAction,
    //     ),
    //     IconSlideAction(
    //       color: Colors.transparent,
    //       iconWidget: Container(
    //         height: 40.0,width: 40.0,
    //         decoration: BoxDecoration(
    //             shape: BoxShape.circle,
    //             color:widget.secondColor.withOpacity(0.4)
    //         ),
    //         child: Icon(widget.secondIcon,color: widget.secondColor,),
    //       ),
    //       onTap: widget.secondAction,
    //     ),
    //   ],
    // );
  }
}

class builddateTextField extends StatefulWidget {
  TextEditingController controller;
  String lableName;
  DateTime date;
  Function onSelectDate;
  builddateTextField({this.controller,this.date,this.lableName,this.onSelectDate});
  @override
  _builddateTextFieldState createState() => _builddateTextFieldState();
}

class _builddateTextFieldState extends State<builddateTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: widget.controller,
      onTap: () {
        print("Work");
        showModalBottomSheet(
            context: context,
            builder: (BuildContext builder) {
              return Container(
                height: MediaQuery.of(context)
                    .copyWith()
                    .size
                    .height /
                    4.5,
                child: CupertinoDatePicker(
                    mode:
                    CupertinoDatePickerMode.date,
                    initialDateTime: widget.date,
                    onDateTimeChanged: widget.onSelectDate
                ),
              );
            });
      },
      decoration: InputDecoration(
          labelText: widget.lableName,
          suffixIcon: Icon(Icons.date_range),
          // suffixIcon: InkWell(
          //     onTap: () {
          //       print("Work");
          //       showModalBottomSheet(
          //           context: context,
          //           builder: (BuildContext builder) {
          //             return Container(
          //               height: MediaQuery.of(context)
          //                   .copyWith()
          //                   .size
          //                   .height /
          //                   4.5,
          //               child: CupertinoDatePicker(
          //                   mode:
          //                   CupertinoDatePickerMode.date,
          //                   initialDateTime: widget.date,
          //                   onDateTimeChanged: widget.onSelectDate
          //               ),
          //             );
          //           });
          //     },
          //     child: Icon(Icons.date_range)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0)),
          hintText: "Select Date"),
    );
  }
}


