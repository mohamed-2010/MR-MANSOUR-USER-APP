import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class RocketLessonWidget extends StatelessWidget {
  RocketLessonWidget({Key? key,required this.file,required this.right,this.onTap,required this.title,required this.enabled}) : super(key: key);
  String file;
  bool right = false;
  Function()? onTap;
  String title;
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    if(enabled == true){
      return Transform.rotate(
        angle: 9.4,
        child: Padding(
          padding: right == true ? EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.4) : EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.4),
          child: InkWell(
            onTap: onTap,
            child: Stack(
              children: [
                Lottie.asset(file,
                    fit: BoxFit.contain,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.7,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.3),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.26),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Text(title , style: GoogleFonts.cairo(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.redAccent),)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }else{
      return Stack(
        children: [
          Transform.rotate(
            angle: 9.4,
            child: Padding(
              padding: right == true ? EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.4) : EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.4),
              child: Stack(
                children: [
                  Lottie.asset(file,
                      fit: BoxFit.contain,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.7,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.3),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text(title , style: GoogleFonts.cairo(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.redAccent),)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.rotate(
            angle: 9.4,
            child: Padding(
              padding: right == true ? EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.4) : EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.25,bottom: MediaQuery.of(context).size.height *0.15),
                    child: Image.asset('assets/images/lock.png',width: MediaQuery.of(context).size.width * 0.1,height: MediaQuery.of(context).size.height * 0.1,),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    }
  }
}
