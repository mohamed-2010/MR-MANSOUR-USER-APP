import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/app/view/page/unites_page.dart';

import '../../controller/home_comtroller.dart';
import 'about.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

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
    return Obx(() {
      if (controller.isLoading.value == true) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Scaffold(
          body: Stack(
            children: [
              Image.asset(
                'assets/images/home_back.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Column(
                children: [
                  Lottie.asset('assets/images/stars.json'),
                  Lottie.asset('assets/images/stars.json'),
                  Lottie.asset('assets/images/stars.json'),
                  Lottie.asset(
                    'assets/images/stars.json',
                  ),
                  Lottie.asset(
                    'assets/images/stars.json',
                  ),
                  Lottie.asset(
                    'assets/images/stars.json',
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin:
                      const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: SlideTransition(
                        position: controller.offsetAnimation!,
                        child: Image.asset('assets/images/rocket_up.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SlideTransition(
                          position: controller.widgetSixOffsetAnimation!,
                          child: InkWell(
                            onTap: () {
                              controller.studyphase[5].enable == false ? Get.snackbar("Error" , "Not Enable"):Get.to(UnitesPage(),
                                  arguments: controller.studyphase[5].id);
                              onTapWithAudio();
                            },
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.35,
                              child: Stack(
                                children: [
                                  SlideTransition(
                                      position:
                                      controller.smalloffsetAnimation!,
                                      child: Column(
                                        children: [
                                          Lottie.asset(
                                            'assets/images/rocket3.json',
                                            width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                            height:
                                            MediaQuery.of(context).size.height *
                                                0.3,
                                          ),
                                        ],
                                      )),
                                  SlideTransition(
                                    position: controller.smalloffsetAnimation!,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
                                      child: Center(
                                          child: Image.asset('assets/images/6.png',width: MediaQuery.of(context).size.width * 0.08,height: MediaQuery.of(context).size.height * 0.1,)),
                                    ),
                                  ),
                                  controller.studyphase[5].enable == false ? SlideTransition(
                                    position: controller.smalloffsetAnimation!,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
                                      child: Image.asset('assets/images/comming_soon.png'),
                                    ),
                                  ) : SizedBox(),
                                  SlideTransition(
                                    position: controller.smalloffsetAnimation!,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.29),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        width: MediaQuery.of(context).size.width *
                                            0.28,
                                        height: MediaQuery.of(context).size.height * 0.07,
                                        child: Center(
                                          child: Text("الصف السادس",
                                              style: GoogleFonts.cairo(
                                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red,
                                              )),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SlideTransition(
                          position: controller.widgetFiveOffsetAnimation!,
                          child: InkWell(
                            onTap: () {
                              controller.studyphase[4].enable == false ? Get.snackbar("Error" , "Not Enable"):Get.to(UnitesPage(),
                                  arguments: controller.studyphase[4].id);
                              onTapWithAudio();
                            },
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.34,
                              height: MediaQuery.of(context).size.height * 0.35,
                              child: Stack(
                                children: [
                                  SlideTransition(
                                      position:
                                      controller.smalloffsetAnimation!,
                                      child: Lottie.asset(
                                        'assets/images/rocket4.json',
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.3,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.3,
                                      )),
                                  SlideTransition(
                                    position: controller.smalloffsetAnimation!,
                                    child: Center(
                                        child: Image.asset('assets/images/5.png',width: MediaQuery.of(context).size.width * 0.08,height: MediaQuery.of(context).size.height * 0.1,)),
                                  ),
                                  controller.studyphase[4].enable == false ? SlideTransition(
                                    position: controller.smalloffsetAnimation!,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
                                      child: Image.asset('assets/images/comming_soon.png'),
                                    ),
                                  ) : SizedBox(),
                                  SlideTransition(
                                    position: controller.smalloffsetAnimation!,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.29),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                        width: MediaQuery.of(context).size.width *
                                            0.3,
                                        height: MediaQuery.of(context).size.height * 0.07,
                                        child: Center(
                                          child: Text("الصف الخامس",
                                              style: GoogleFonts.cairo(
                                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red,
                                              )),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SlideTransition(
                            position: controller.widgetFourOffsetAnimation!,
                            child: InkWell(
                              onTap: () {
                                controller.studyphase[3].enable == false ? Get.snackbar("Error" , "Not Enable"):Get.to(UnitesPage(),
                                    arguments: controller.studyphase[3].id);
                                onTapWithAudio();
                              },
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                MediaQuery.of(context).size.height * 0.35,
                                child: Stack(
                                  children: [
                                    SlideTransition(
                                        position:
                                        controller.smalloffsetAnimation!,
                                        child: Lottie.asset(
                                          'assets/images/rocket9.json',
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.3,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.3,
                                        )),
                                    SlideTransition(
                                      position:
                                      controller.smalloffsetAnimation!,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
                                        child: Center(
                                            child: Transform.rotate(angle: 0.6,child: Image.asset('assets/images/4.png',width: MediaQuery.of(context).size.width * 0.09,height: MediaQuery.of(context).size.height * 0.12,))),
                                      ),
                                    ),
                                    controller.studyphase[3].enable == false ? SlideTransition(
                                      position: controller.smalloffsetAnimation!,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
                                        child: Image.asset('assets/images/comming_soon.png'),
                                      ),
                                    ) : SizedBox(),
                                    SlideTransition(
                                      position: controller.smalloffsetAnimation!,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.29),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          width: MediaQuery.of(context).size.width *
                                              0.3,
                                          height: MediaQuery.of(context).size.height * 0.07,
                                          child: Center(
                                            child: Text("الصف الرابع",
                                                style: GoogleFonts.cairo(
                                                  fontSize: MediaQuery.of(context).size.width * 0.04,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
                                                )),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SlideTransition(
                            position: controller.widgetThreeOffsetAnimation!,
                            child: InkWell(
                              onTap: () {
                                controller.studyphase[2].enable == false ? Get.snackbar("Error" , "Not Enable"):Get.to(UnitesPage(),
                                    arguments: controller.studyphase[2].id);
                                onTapWithAudio();
                              },
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.34,
                                height:
                                MediaQuery.of(context).size.height * 0.35,
                                child: Stack(
                                  children: [
                                    SlideTransition(
                                        position:
                                        controller.smalloffsetAnimation!,
                                        child: Lottie.asset(
                                          'assets/images/rocket3.json',
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.3,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.3,
                                        )),
                                    SlideTransition(
                                      position:
                                      controller.smalloffsetAnimation!,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.16),
                                        child: Center(
                                            child: Image.asset('assets/images/3.png',width: MediaQuery.of(context).size.width * 0.05,)
                                        ),
                                      ),
                                    ),
                                    controller.studyphase[2].enable == false ? SlideTransition(
                                      position: controller.smalloffsetAnimation!,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
                                        child: Image.asset('assets/images/comming_soon.png'),
                                      ),
                                    ) : SizedBox(),
                                    SlideTransition(
                                      position: controller.smalloffsetAnimation!,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.29),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          width: MediaQuery.of(context).size.width *
                                              0.3,
                                          height: MediaQuery.of(context).size.height * 0.07,
                                          child: Center(
                                            child: Text("الصف الثالث",
                                                style: GoogleFonts.cairo(
                                                  fontSize: MediaQuery.of(context).size.width * 0.04,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
                                                )),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SlideTransition(
                            position: controller.widgetTwoOffsetAnimation!,
                            child: InkWell(
                              onTap: () {
                                controller.studyphase[1].enable == false ? Get.snackbar("Error" , "Not Enable"):Get.to(UnitesPage(),
                                    arguments: controller.studyphase[1].id);
                                onTapWithAudio();
                              },
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                MediaQuery.of(context).size.height * 0.3,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: SlideTransition(
                                          position:
                                          controller.smalloffsetAnimation!,
                                          child: Lottie.asset(
                                            'assets/images/rocket1.json',
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.3,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height *
                                                0.3,
                                          )),
                                    ),
                                    SlideTransition(
                                      position:
                                      controller.smalloffsetAnimation!,
                                      child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
                                            child: Center(
                                                child: Transform.rotate(angle: -0.7,child: Image.asset('assets/images/2.png',width: MediaQuery.of(context).size.width * 0.09,height: MediaQuery.of(context).size.height * 0.12,))),
                                          )
                                      ),
                                    ),
                                    controller.studyphase[1].enable == false ? SlideTransition(
                                      position: controller.smalloffsetAnimation!,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
                                        child: Image.asset('assets/images/comming_soon.png'),
                                      ),
                                    ) : SizedBox(),
                                    SlideTransition(
                                      position: controller.smalloffsetAnimation!,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.22),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          width: MediaQuery.of(context).size.width *
                                              0.3,
                                          height: MediaQuery.of(context).size.height * 0.07,
                                          child: Center(
                                            child: Text("الصف الثاني",
                                                style: GoogleFonts.cairo(
                                                  fontSize: MediaQuery.of(context).size.width * 0.04,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
                                                )),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SlideTransition(
                            position: controller.widgetOneOffsetAnimation!,
                            child: InkWell(
                              onTap: () {
                                controller.studyphase[0].enable == false ? Get.snackbar("Error" , "Not Enable"):Get.to(UnitesPage(),
                                    arguments: controller.studyphase[0].id);
                                onTapWithAudio();
                              },
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                MediaQuery.of(context).size.height * 0.3,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: SlideTransition(
                                          position:
                                          controller.smalloffsetAnimation!,
                                          child: Lottie.asset(
                                            'assets/images/rocket2.json',
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.3,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height *
                                                0.3,
                                          )),
                                    ),
                                    SlideTransition(
                                      position:
                                      controller.smalloffsetAnimation!,
                                      child: Center(
                                          child: Center(
                                              child: Image.asset('assets/images/1.png',width: MediaQuery.of(context).size.width * 0.06,height: MediaQuery.of(context).size.height * 0.12,))),
                                    ),
                                    controller.studyphase[0].enable == false ? SlideTransition(
                                      position: controller.smalloffsetAnimation!,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
                                        child: Image.asset('assets/images/comming_soon.png'),
                                      ),
                                    ) : SizedBox(),
                                    SlideTransition(
                                      position: controller.smalloffsetAnimation!,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.22),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          width: MediaQuery.of(context).size.width *
                                              0.3,
                                          height: MediaQuery.of(context).size.height * 0.07,
                                          child: Center(
                                            child: Text("الصف الاول",
                                                style: GoogleFonts.cairo(
                                                  fontSize: MediaQuery.of(context).size.width * 0.04,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
                                                )),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SlideTransition(
                        position: controller.textOffsetAnimation!,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.06),
                            child: Image.asset('assets/images/start_and_learn_text.png'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SafeArea(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Center(
                            child: IconButton(
                              iconSize: MediaQuery.of(context).size.width * 0.15,
                              icon: Image.asset('assets/images/about.png',),
                              color: Colors.white, onPressed: () { Get.to(AboutPage()); onTapWithAudio(); },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }
    });
  }
}
