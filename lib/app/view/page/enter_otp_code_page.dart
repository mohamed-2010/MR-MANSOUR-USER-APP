import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_animations/im_animations.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

import '../../controller/login_controller.dart';

class EnterOtpCodePage extends GetView<LoginController> {
  const EnterOtpCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onTapWithAudio() async {
      //create a new player
      final assetsAudioPlayer = AssetsAudioPlayer();
      assetsAudioPlayer.open(
        Audio("assets/audio/mixkit-sci-fi-interface-robot-click-901.mp3"),
        showNotification: true,
      );
    }
    return Stack(
      children: [
        Image.asset(
          'assets/images/login.jpg',
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Column(
          children: [
            Lottie.asset('assets/images/stars.json'),
            Lottie.asset('assets/images/stars.json'),
            Lottie.asset('assets/images/stars.json'),
            Lottie.asset('assets/images/stars.json',),
          ],
        ),
        Obx(() => LoadingOverlay(
          isLoading: controller.isLoading.value,
          progressIndicator: SpinKitRotatingPlain(
            color: Theme.of(context).primaryColor,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                onTapWithAudio();
              },
              child: Column(
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: AspectRatio(
                                aspectRatio: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Lottie.asset('assets/images/rocket.json',
                                        height: MediaQuery.of(context).size.height * 0.3,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill)
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "ادخل كود التفعيل",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.cairo(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 24, right: 24, top: 40),
                              child: PinInputTextField(
                                controller: controller.otpController,
                                pinLength: 6,
                                textInputAction: TextInputAction.done,
                                decoration: CirclePinDecoration(
                                    strokeColorBuilder: FixedColorBuilder(
                                        Colors.white),
                                    hintText: "000000",
                                    errorText: controller.pinError.value.isEmpty
                                        ? null
                                        : controller.pinError.value,
                                    strokeWidth: 2,
                                    hintTextStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                                right: 24,
                                top: 40,
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Theme.of(context)
                                            .disabledColor
                                            .withOpacity(0.1),
                                        offset: const Offset(4, 4),
                                        blurRadius: 10,
                                      )
                                    ]),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      controller.verifyOTP();
                                      onTapWithAudio();
                                      // Get.to(const VerificationScreen());
                                    },
                                    borderRadius: BorderRadius.circular(30),
                                    child: const Center(
                                      child: Text(
                                        "استمرار",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SlideTransition(
                                  position: controller.offsetAnimation!,
                                  child: Image.asset(
                                    'assets/images/11.png',
                                    height: 200,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.2,
                                ),
                                SlideTransition(
                                    position: controller.offsetAnimation!,
                                    child: Image.asset(
                                      'assets/images/12.png',
                                      height: 200,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        )),
      ],
    );
  }
}