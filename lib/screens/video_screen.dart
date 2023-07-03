import 'package:bhdelni/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
            title: const Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
                  ),
                  radius: 25.0,
                ),
                SizedBox (
                  width: 10.0,
                ),
                Text(
                  'David Ashraf',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),

      ),
      body: ,
    );
  }
}







