import 'dart:html';

import 'package:bhdelni/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final ImagePicker_imagePicker = ImagePicker();
    File? _video;
    VideoPlayerController? _videoPlayerController;
    VideoPlayerController? _controller;

    Future<void> getVideo() async {
      XFile? video =
      await ImagePicker_imagePicker.pickVideo(source: ImageSource.gallery);
      _video = File(video!.path);
      _videoPlayerController = _videoPlayerController.file(_video!)
        ..initialize().then((_) {
          setState(() {});
          _videoPlayerController!.play();
        });
    }

    return Scaffold(
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
                    'kirolles faie',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),

        ),
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
              itemBuilder: (context,index)=> videoView(
                  onTap: () {  }
              ) ,
              separatorBuilder: (context,index)=> const SizedBox(
                height: 20.0,
              ),
              itemCount: 10,
          ),
        ) ,
      ),
    );
  }
}

Widget videoView({
  required GestureTapCallback onTap,
})

{
  return GestureDetector(
    onTap: onTap,
    child:ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 200.0,
        color: ConstColors.coffee,


      ),
    ),


  );
}






