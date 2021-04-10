import 'package:flutter/material.dart';
import '../Static/importfiles.dart';

class CustomAppBar extends StatefulWidget {
  String title;
  Icon leadicon;
  Function ontep;
  CustomAppBar({this.title, this.leadicon});
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomTitleText(
        name: widget.title,
      ),
      automaticallyImplyLeading: false,
      leading: widget.leadicon != null
          ? IconButton(
              icon: Icon(Icons.keyboard_arrow_left_sharp),
              onPressed: widget.ontep)
          : Container(),
    );
  }
}
