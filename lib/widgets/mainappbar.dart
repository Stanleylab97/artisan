import 'package:artisan/widgets/fonticon.dart';
import 'package:flutter/material.dart';

import 'helper.dart';
import 'userprofilehader.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;
  bool showProfilePic;

  MainAppBar({this.themeColor = Colors.green, this.showProfilePic = true});

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      /*  title: GestureDetector(
          onTap: () {
          //  Utils.mainAppNav.currentState!.popUntil((route) => route.settings.name == '/mainpage');
          },), */
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: widget.themeColor),

      /* child: Center(
            child: IconFont(
            iconName: IconFontHelper.LOGO,
              color: widget.themeColor,
              size: 40
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: widget.themeColor),
        actions: [
          UserProfileHeader(
            showProfilePic: widget.showProfilePic,
          ) 
        ],*/
    );
  }
}
