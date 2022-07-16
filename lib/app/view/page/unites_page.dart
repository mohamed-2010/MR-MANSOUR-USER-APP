import 'dart:math';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:untitled1/app/view/page/lesson_page.dart';
import '../../controller/unites_controller.dart';
import 'lessons_page.dart';

class UnitesPage extends GetView<UnitesController> {
  UnitesPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<UnitesController>(() => UnitesController());
    void onTapWithAudio() async {
      //create a new player
      final assetsAudioPlayer = AssetsAudioPlayer();
      assetsAudioPlayer.open(
        Audio("assets/audio/mixkit-sci-fi-interface-robot-click-901.mp3"),
        showNotification: true,
      );
    }

    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return ScaffoldGradientBackground(
          gradient: RadialGradient(
            colors: [
              Color(0xFF081371),
              Color(0xFF052862),
            ],
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Stack(
                  children: [
                    Stack(
                      children: [
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
                        Image.asset(
                          'assets/images/sun.png',
                          fit: BoxFit.contain,
                          width: MediaQuery.of(context).size.width * 0.5,
                          //height: MediaQuery.of(context).size.height *0.5
                        ),
                        controller.unites[0].enabled == true
                            ? Column(
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 0),
                                        child: Image.asset(
                                            'assets/images/path1.png',
                                            fit: BoxFit.fill,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.25,
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.15),
                                        child: Lottie.asset(
                                            'assets/images/planet2.json',
                                            fit: BoxFit.contain,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.15),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.17),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.07,
                                              bottom: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.1),
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                            child: GestureDetector(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    right:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.05),
                                                child: Center(
                                                  child: Text("UNIT 1",
                                                      style: TextStyle(
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.035,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.green)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Container(),
                        controller.unites[1].enabled == true
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.2),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02 *
                                              pi /
                                              180,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Image.asset(
                                                'assets/images/path1.png',
                                                fit: BoxFit.fill,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.12),
                                          child: Material(
                                            color: Colors.transparent,
                                            child: Lottie.asset(
                                                'assets/images/planet1.json',
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(LessonsPage(), arguments: {
                                              'unitId': controller.argumentData,
                                              'lessonId':
                                                  controller.unites[1].id,
                                            });
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.19),
                                            child: Center(
                                              child: Text("UNIT 2",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.04,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors
                                                          .lightGreenAccent)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                        controller.unites[2].enabled == true
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.4),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02 *
                                              pi /
                                              180,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Image.asset(
                                                'assets/images/path1.png',
                                                fit: BoxFit.fill,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.15,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15),
                                          child: InkWell(
                                            onTap: () {
                                              Get.to(LessonsPage(), arguments: {
                                                'unitId':
                                                    controller.argumentData,
                                                'lessonId':
                                                    controller.unites[2].id,
                                              });
                                            },
                                            child: Lottie.asset(
                                                'assets/images/planet3.json',
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.22),
                                          child: Center(
                                            child: Text("UNIT 3",
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.04,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF440303))),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                        controller.unites[3].enabled == true
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.6),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02 *
                                              pi /
                                              180,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Image.asset(
                                                'assets/images/path1.png',
                                                fit: BoxFit.fill,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.12),
                                          child: InkWell(
                                            onTap: () {
                                              Get.to(LessonsPage(), arguments: {
                                                'unitId':
                                                    controller.argumentData,
                                                'lessonId':
                                                    controller.unites[3].id,
                                              });
                                            },
                                            child: Lottie.asset(
                                                'assets/images/planet4.json',
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2),
                                          child: Center(
                                            child: Text("UNIT 4",
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.04,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                        controller.unites[4].enabled == true
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.8),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02 *
                                              pi /
                                              180,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Image.asset(
                                                'assets/images/path1.png',
                                                fit: BoxFit.fill,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15),
                                          child: InkWell(
                                            onTap: () {
                                              Get.to(LessonsPage(), arguments: {
                                                'unitId':
                                                    controller.argumentData,
                                                'lessonId':
                                                    controller.unites[4].id,
                                              });
                                            },
                                            child: Lottie.asset(
                                                'assets/images/planet5.json',
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.22),
                                          child: Center(
                                            child: Text("UNIT 5",
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.04,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors
                                                        .lightGreenAccent)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                        controller.unites[5].enabled == true
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.height * 1),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02 *
                                              pi /
                                              180,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Image.asset(
                                                'assets/images/path1.png',
                                                fit: BoxFit.fill,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.12),
                                          child: InkWell(
                                            onTap: () {
                                              Get.to(LessonsPage(), arguments: {
                                                'unitId':
                                                    controller.argumentData,
                                                'lessonId':
                                                    controller.unites[5].id,
                                              });
                                            },
                                            child: Lottie.asset(
                                                'assets/images/planet6.json',
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2),
                                          child: Center(
                                            child: Text("UNIT 6",
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.04,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                        controller.unites[6].enabled == true
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        1.2),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02 *
                                              pi /
                                              180,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Image.asset(
                                                'assets/images/path1.png',
                                                fit: BoxFit.fill,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.18,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15),
                                          child: InkWell(
                                            onTap: () {
                                              Get.to(LessonsPage(), arguments: {
                                                'unitId':
                                                    controller.argumentData,
                                                'lessonId':
                                                    controller.unites[6].id,
                                              });
                                            },
                                            child: Lottie.asset(
                                                'assets/images/planet7.json',
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.25,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.23),
                                          child: Center(
                                            child: Text("UNIT 7",
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.04,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors
                                                        .lightGreenAccent)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                        controller.unites[7].enabled == true
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        1.4),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02 *
                                              pi /
                                              180,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Image.asset(
                                                'assets/images/path1.png',
                                                fit: BoxFit.fill,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.12),
                                          child: InkWell(
                                            onTap: () {
                                              Get.to(LessonsPage(), arguments: {
                                                'unitId':
                                                    controller.argumentData,
                                                'lessonId':
                                                    controller.unites[7].id,
                                              });
                                            },
                                            child: Lottie.asset(
                                                'assets/images/planet8.json',
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2),
                                          child: Center(
                                            child: Text("UNIT 8",
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.03,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF135D08))),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                        controller.unites[8].enabled == true
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        1.6),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02 *
                                              pi /
                                              180,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 0),
                                            child: Image.asset(
                                                'assets/images/path1.png',
                                                fit: BoxFit.fill,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.17,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15),
                                          child: InkWell(
                                            onTap: () {
                                              Get.to(LessonsPage(), arguments: {
                                                'unitId':
                                                    controller.argumentData,
                                                'lessonId':
                                                    controller.unites[8].id,
                                              });
                                            },
                                            child: Lottie.asset(
                                                'assets/images/planet9.json',
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.25,
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.22),
                                          child: Center(
                                            child: Text("UNIT 9",
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.04,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF44032A))),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                      ],
                    ),
                    controller.unites[0].enabled == true
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.45,
                                top: MediaQuery.of(context).size.height * 0.17),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(LessonsPage(), arguments: {
                                    'unitId': controller.argumentData,
                                    'lessonId': controller.unites[0].id,
                                  });
                                  onTapWithAudio();
                                },
                              ),
                            ),
                          )
                        : Container(),
                    controller.unites[1].enabled == true
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.55,
                                top: MediaQuery.of(context).size.height * 0.37),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(LessonsPage(), arguments: {
                                    'unitId': controller.argumentData,
                                    'lessonId': controller.unites[1].id,
                                  });
                                  onTapWithAudio();
                                },
                              ),
                            ),
                          )
                        : Container(),
                    controller.unites[2].enabled == true
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.2,
                                top: MediaQuery.of(context).size.height * 0.6),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              width: MediaQuery.of(context).size.width * 0.3,
                              //color: Colors.red,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(LessonsPage(), arguments: {
                                    'unitId': controller.argumentData,
                                    'lessonId': controller.unites[2].id,
                                  });
                                  onTapWithAudio();
                                },
                              ),
                            ),
                          )
                        : Container(),
                    controller.unites[3].enabled == true
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.55,
                                top: MediaQuery.of(context).size.height * 0.77),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              width: MediaQuery.of(context).size.width * 0.3,
                              //color: Colors.red,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(LessonsPage(), arguments: {
                                    'unitId': controller.argumentData,
                                    'lessonId': controller.unites[3].id,
                                  });
                                  onTapWithAudio();
                                },
                              ),
                            ),
                          )
                        : Container(),
                    controller.unites[4].enabled == true
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.25,
                                top: MediaQuery.of(context).size.height * 1),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              width: MediaQuery.of(context).size.width * 0.3,
                              //color: Colors.red,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(LessonsPage(), arguments: {
                                    'unitId': controller.argumentData,
                                    'lessonId': controller.unites[4].id,
                                  });
                                  onTapWithAudio();
                                },
                              ),
                            ),
                          )
                        : Container(),
                    controller.unites[5].enabled == true
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.55,
                                top: MediaQuery.of(context).size.height * 1.17),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              width: MediaQuery.of(context).size.width * 0.3,
                              //color: Colors.red,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(LessonsPage(), arguments: {
                                    'unitId': controller.argumentData,
                                    'lessonId': controller.unites[5].id,
                                  });
                                  onTapWithAudio();
                                },
                              ),
                            ),
                          )
                        : Container(),
                    controller.unites[6].enabled == true
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.21,
                                top: MediaQuery.of(context).size.height * 1.4),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              width: MediaQuery.of(context).size.width * 0.3,
                              //color: Colors.red,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(LessonsPage(), arguments: {
                                    'unitId': controller.argumentData,
                                    'lessonId': controller.unites[6].id,
                                  });
                                  onTapWithAudio();
                                },
                              ),
                            ),
                          )
                        : Container(),
                    controller.unites[7].enabled == true
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.55,
                                top: MediaQuery.of(context).size.height * 1.57),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              width: MediaQuery.of(context).size.width * 0.27,
                              //color: Colors.red,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(LessonsPage(), arguments: {
                                    'unitId': controller.argumentData,
                                    'lessonId': controller.unites[7].id,
                                  });
                                  onTapWithAudio();
                                },
                              ),
                            ),
                          )
                        : Container(),
                    controller.unites[8].enabled == true
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.23,
                                top: MediaQuery.of(context).size.height * 1.8),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              width: MediaQuery.of(context).size.width * 0.27,
                              //color: Colors.red,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(LessonsPage(), arguments: {
                                    'unitId': controller.argumentData,
                                    'lessonId': controller.unites[8].id,
                                  });
                                  onTapWithAudio();
                                },
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
              SafeArea(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.help,
                                  color: Colors.white,
                                  size: 40
                                ),
                                onPressed: () {
                                  Get.to(LessonPage(url: controller.linkUrl.value, horizontal: false));
                                },
                              )
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.013,
                                  bottom:
                                      MediaQuery.of(context).size.height * 0.0),
                              child: Center(
                                child: IconButton(
                                  icon: Image.asset(
                                    'assets/images/back_icon.png',
                                  ),
                                  color: Colors.white,
                                  onPressed: () {
                                    onTapWithAudio();
                                    Get.back();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
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
