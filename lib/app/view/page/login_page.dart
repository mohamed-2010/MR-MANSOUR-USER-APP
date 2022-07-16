import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_animations/im_animations.dart';
import 'package:lottie/lottie.dart';

import '../../controller/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

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
    return Scaffold(
      body: Stack(
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
          InkWell(
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
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Text(
                                'اتعلم و استمتع بالالعاب '
                                    'وانشطة Connect',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.cairo(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              right: 24,
                              top: 40,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 48,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color:Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Theme.of(context)
                                              .disabledColor
                                              .withOpacity(0.1),
                                          offset: const Offset(4, 4),
                                          blurRadius: 10,
                                        )
                                      ]),
                                  child: CountryCodePicker(
                                    initialSelection: 'EG',
                                    favorite: const ['+20', 'Eg'],
                                    closeIcon: Icon(
                                      Icons.close,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    textStyle: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    onChanged: (countryCode) {
                                      if (kDebugMode) {
                                        print(countryCode.dialCode);
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Theme.of(context)
                                                .disabledColor
                                                .withOpacity(0.1),
                                            offset: const Offset(4, 4),
                                            blurRadius: 10,
                                          )
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: SizedBox(
                                        height: 48,
                                        child: Center(
                                          child: Obx(() => TextField(
                                            controller: controller.numberController,
                                            keyboardType: TextInputType.number,
                                            cursorColor:
                                            Theme.of(context).primaryColor,
                                            maxLines: 1,
                                            decoration: InputDecoration(
                                              errorMaxLines: 1,
                                              contentPadding: const EdgeInsets.only(
                                                top: 5,
                                                bottom: 5,
                                              ),
                                              errorText: controller
                                                  .numberError.value.isEmpty
                                                  ? null
                                                  : controller.numberError.value,
                                              border: InputBorder.none,
                                              hintText: "رقم الهاتف",
                                            ),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
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
                                    controller.sendOTP();
                                    onTapWithAudio();
                                    // Get.to(const VerificationScreen());
                                  },
                                  borderRadius: BorderRadius.circular(30),
                                  child: const Center(
                                    child: Text(
                                      "تسجيل",
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
        ],
      ),
    );
  }
}