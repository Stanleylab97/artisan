import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProfileHeader extends StatelessWidget {

  bool? showProfilePic;

  UserProfileHeader({
    this.showProfilePic
  });

  @override
  Widget build(BuildContext context) {

        return Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset("assets/images")
            )
          );
    

  }
}