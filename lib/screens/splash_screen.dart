import 'package:bhdelni/screens/users/user/user.dart';
import 'package:flutter/material.dart';

import '../constants/conestant.dart';
import '../widgets/global/logo.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int splashtime = 0;

  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        Widget widget;
        if (constUid != null && constUid != '') {
          constUid = constUid;
          if (constUid == 'admin') {
            widget = const UserScreen();
          } else {
            widget = const UserScreen();
          }
        } else {
          widget = UserScreen();
        }
        return widget;
      }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: logo(size: 150)),
    );
  }
}
