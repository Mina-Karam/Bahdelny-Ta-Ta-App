import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(
              children: [
                SizedBox(
                  height: size.height,
                  child: Image.asset(
                    'assets/image/logo-_4_.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 7,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaY: 25, sigmaX: 25),
                            child: SizedBox(
                              width: size.width * .9,
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.width * .15,
                                      bottom: size.width * .1,
                                    ),
                                    child: Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white.withOpacity(.8),
                                      ),
                                    ),
                                  ),
                                  component(
                                    context,
                                    Icons.email_outlined,
                                    'Email...',
                                    false,
                                    true,
                                  ),
                                  component(
                                    context,
                                    Icons.lock_outline,
                                    'Password...',
                                    true,
                                    false,
                                  ),
                                  SizedBox(height: size.width * .3),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      HapticFeedback.lightImpact();
                                      Fluttertoast.showToast(
                                        msg: 'Sign-In button pressed',
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        bottom: size.width * .05,
                                      ),
                                      height: size.width / 8,
                                      width: size.width / 1.25,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(.1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Text(
                                        'Sign-In',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context,
      Widget child,
      AxisDirection axisDirection,
      ) {
    return child;
   }
}




Widget component( context,
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 8,
      width: size.width / 1.25,
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: size.width / 30),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        style: TextStyle(
          color: Colors.white.withOpacity(.9),
        ),
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white.withOpacity(.8),
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.white.withOpacity(.5),
          ),
        ),
      ),
    );
  }





// // IMAGE LINK : https://unsplash.com/photos/bOBM8CB4ZC4
//
//
// import 'package:flutter/material.dart';
// import 'dart:ui';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/services.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Translucent Login UI',
//       home: MyHomePage(),
//     ),
//   );
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: ScrollConfiguration(
//         behavior: MyBehavior(),
//         child: SingleChildScrollView(
//           child: SizedBox(
//             height: size.height,
//             child: Stack(
//               children: [
//                 SizedBox(
//                   height: size.height,
//                   child: Image.asset(
//                     'assets/images/background_image.jpg',
//                     // #Image Url: https://unsplash.com/photos/bOBM8CB4ZC4
//                     fit: BoxFit.fitHeight,
//                   ),
//                 ),
//                 Center(
//                   child: Column(
//                     children: [
//                       Expanded(
//                         child: SizedBox(),
//                       ),
//                       Expanded(
//                         flex: 7,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(30),
//                           child: BackdropFilter(
//                             filter: ImageFilter.blur(sigmaY: 25, sigmaX: 25),
//                             child: SizedBox(
//                               width: size.width * .9,
//                               child: Column(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       top: size.width * .15,
//                                       bottom: size.width * .1,
//                                     ),
//                                     child: Text(
//                                       'SIGN IN',
//                                       style: TextStyle(
//                                         fontSize: 25,
//                                         fontWeight: FontWeight.w600,
//                                         color: Colors.white.withOpacity(.8),
//                                       ),
//                                     ),
//                                   ),
//                                   component(
//                                     Icons.account_circle_outlined,
//                                     'User name...',
//                                     false,
//                                     false,
//                                   ),
//                                   component(
//                                     Icons.email_outlined,
//                                     'Email...',
//                                     false,
//                                     true,
//                                   ),
//                                   component(
//                                     Icons.lock_outline,
//                                     'Password...',
//                                     true,
//                                     false,
//                                   ),
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                     children: [
//                                       RichText(
//                                         text: TextSpan(
//                                           text: 'Forgotten password!',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                           recognizer: TapGestureRecognizer()
//                                             ..onTap = () {
//                                               HapticFeedback.lightImpact();
//                                               Fluttertoast.showToast(
//                                                 msg:
//                                                 'Forgotten password! button pressed',
//                                               );
//                                             },
//                                         ),
//                                       ),
//                                       RichText(
//                                         text: TextSpan(
//                                           text: 'Create a new Account',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                           recognizer: TapGestureRecognizer()
//                                             ..onTap = () {
//                                               HapticFeedback.lightImpact();
//                                               Fluttertoast.showToast(
//                                                 msg:
//                                                 'Create a new Account button pressed',
//                                               );
//                                             },
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(height: size.width * .3),
//                                   InkWell(
//                                     splashColor: Colors.transparent,
//                                     highlightColor: Colors.transparent,
//                                     onTap: () {
//                                       HapticFeedback.lightImpact();
//                                       Fluttertoast.showToast(
//                                         msg: 'Sign-In button pressed',
//                                       );
//                                     },
//                                     child: Container(
//                                       margin: EdgeInsets.only(
//                                         bottom: size.width * .05,
//                                       ),
//                                       height: size.width / 8,
//                                       width: size.width / 1.25,
//                                       alignment: Alignment.center,
//                                       decoration: BoxDecoration(
//                                         color: Colors.black.withOpacity(.1),
//                                         borderRadius: BorderRadius.circular(20),
//                                       ),
//                                       child: Text(
//                                         'Sing-In',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: SizedBox(),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget component(
//       IconData icon, String hintText, bool isPassword, bool isEmail) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       height: size.width / 8,
//       width: size.width / 1.25,
//       alignment: Alignment.center,
//       padding: EdgeInsets.only(right: size.width / 30),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(.1),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: TextField(
//         style: TextStyle(
//           color: Colors.white.withOpacity(.9),
//         ),
//         obscureText: isPassword,
//         keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
//         decoration: InputDecoration(
//           prefixIcon: Icon(
//             icon,
//             color: Colors.white.withOpacity(.8),
//           ),
//           border: InputBorder.none,
//           hintMaxLines: 1,
//           hintText: hintText,
//           hintStyle: TextStyle(
//             fontSize: 14,
//             color: Colors.white.withOpacity(.5),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MyBehavior extends ScrollBehavior {
//   @override
//   Widget buildViewportChrome(
//       BuildContext context,
//       Widget child,
//       AxisDirection axisDirection,
//       ) {
//     return child;
//    }
// }