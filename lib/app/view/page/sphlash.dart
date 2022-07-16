import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_animations/main.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/app/view/page/login_page.dart';
import '../../controller/login_controller.dart';
import '../../controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SplashController controller = Get.find<SplashController>();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash_about.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          // Row(
          //   children: [
          //     SizedBox(
          //       width: MediaQuery.of(context).size.width,
          //       height: MediaQuery.of(context).size.height,
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Lottie.asset('assets/images/sphlash_rocket.json',
          //               width: MediaQuery.of(context).size.width * 0.8,
          //               height: MediaQuery.of(context).size.height * 0.8),
          //         ],
          //       ),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}