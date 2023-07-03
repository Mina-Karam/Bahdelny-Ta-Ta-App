import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../cubit/user/user_cubit.dart';
import '../../../cubit/user/user_states.dart';
import '../../../data/local/cache_helper.dart';
import '../../../widgets/global/default_button.dart';
import '../../../widgets/global/default_text_field.dart';
import '../../../widgets/global/toast.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return BlocProvider(
        create: (BuildContext context) => UserCubit()
          ..getUserData(),
        child: BlocConsumer<UserCubit, UserStates>(
          listener: (BuildContext context, UserStates state) {
            print('..........**************${state}');
            if (state is GetUserErrorState) {
              print(state.error);
            }
            if (state is LogOutSuccessUserState) {
              showToast(
                message: 'Log out Successfully',
              );
              CacheHelper.removeData(key: "user");
              // Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => Registration(),
              //     ));
            }
          },
          builder: (BuildContext context, UserStates state) {
            UserCubit userCube = UserCubit.get(context);
            double width = MediaQuery.of(context).size.width;
            double height = MediaQuery.of(context).size.height;

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
                                           Icons.lock_outline,
                                            'Email...',
                                      false,
                                      true,
                                           (String? value){}
                                         ),
                                          component(
                                            context,
                                            Icons.lock_outline,
                                            'Password...',
                                            true,
                                            false,
                                              (String? value){}
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
                                              child:  ConditionalBuilder(
                                                condition: state is! GetUserLoadingState,
                                                fallback: (context) => Center(child: CircularProgressIndicator()),
                                                builder:(context)=> defaultButton(
                                                  text:'Login',
                                                  onTap: () {  },
                                                  width: width,
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
          },
        ));

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
    IconData icon,
    String hintText,
    bool isPassword,
    bool isEmail,
    validate,

    ) {
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
      child: TextFormField(
        validator: validate,
        style: TextStyle(
          color: Colors.white.withOpacity(.9),
        ),
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.visiblePassword,
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





