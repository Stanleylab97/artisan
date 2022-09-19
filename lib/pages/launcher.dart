import 'package:artisan/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Launcher extends StatefulWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
        (() => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(95, 146, 33, 1),
      body: FooterView(
          children: <Widget>[
           SizedBox(height: MediaQuery.of(context).size.height * .38,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: LoadingAnimationWidget.twistingDots(
                        leftDotColor: Colors.yellow,
                        rightDotColor: Color.fromRGBO(205, 54, 39, 1),
                        size: 200,
                      )),
                    ],
                  ),
                
          ],
          footer: Footer(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Copyright ©2022, Tous droits réservés.',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17.0,
                        color: Color(0xFF162A49)),
                  ),
                  Text(
                    'Powered by ETHERIK',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        color: Color(0xFF162A49)),
                  ),
                ]),
            padding: EdgeInsets.all(5.0),
          )),
    );
  }
}
