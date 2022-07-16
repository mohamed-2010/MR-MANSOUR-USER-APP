import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:level_map/level_map.dart';
import 'package:lottie/lottie.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:untitled1/app/view/page/lesson_page.dart';
import 'package:untitled1/app/view/widget/rocket_lesson.dart';

import '../../controller/lessons_controller.dart';

class LessonsPage extends GetView<LessonsController> {
  LessonsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<LessonsController>(() => LessonsController());
    final assetsAudioPlayer = AssetsAudioPlayer();
    void onTapWithAudio() async {
      //create a new player
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
        if (controller.lessons.length == 1) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(
                                      LessonPage(url: controller.lessons[0].url,
                                        horizontal: controller.lessons[0].horezontal,
                                      ));
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 2) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(
                                      LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 3) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 4) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 5) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(file: 'assets/images/rocket1.json',
                                right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(file: 'assets/images/rocket2.json',
                                right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(file: 'assets/images/rocket3.json',
                                right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                 title: controller.lessons[2].name),
                            RocketLessonWidget(file: 'assets/images/rocket4.json',
                                right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(file: 'assets/images/rocket5.json',
                                right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 6) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 7) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 8) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 9) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 10) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 11) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[10].url,
                                    horizontal: controller.lessons[10].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[10].enabled,
                                title: controller.lessons[10].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 12) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[10].url,
                                    horizontal: controller.lessons[10].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[10].enabled,
                                title: controller.lessons[10].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[11].url,
                                    horizontal: controller.lessons[11].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[11].enabled,
                                title: controller.lessons[11].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 13) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[10].url,
                                    horizontal: controller.lessons[10].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[10].enabled,
                                title: controller.lessons[10].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[11].url,
                                    horizontal: controller.lessons[11].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[11].enabled,
                                title: controller.lessons[11].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[12].url,
                                    horizontal: controller.lessons[12].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[12].enabled,
                                title: controller.lessons[12].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 14) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[10].url,
                                    horizontal: controller.lessons[10].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[10].enabled,
                                title: controller.lessons[10].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[11].url,
                                    horizontal: controller.lessons[11].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[11].enabled,
                                title: controller.lessons[11].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[12].url,
                                    horizontal: controller.lessons[12].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[12].enabled,
                                title: controller.lessons[12].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[13].url,
                                    horizontal: controller.lessons[13].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[13].enabled,
                                title: controller.lessons[13].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 15) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[10].url,
                                    horizontal: controller.lessons[10].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[10].enabled,
                                title: controller.lessons[10].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[11].url,
                                    horizontal: controller.lessons[11].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[11].enabled,
                                title: controller.lessons[11].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[12].url,
                                    horizontal: controller.lessons[12].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[12].enabled,
                                title: controller.lessons[12].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[13].url,
                                    horizontal: controller.lessons[13].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[13].enabled,
                                title: controller.lessons[13].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[14].url,
                                    horizontal: controller.lessons[14].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[14].enabled,
                                title: controller.lessons[14].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 16) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[10].url,
                                    horizontal: controller.lessons[10].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[10].enabled,
                                title: controller.lessons[10].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[11].url,
                                    horizontal: controller.lessons[11].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[11].enabled,
                                title: controller.lessons[11].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[12].url,
                                    horizontal: controller.lessons[12].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[12].enabled,
                                title: controller.lessons[12].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[13].url,
                                    horizontal: controller.lessons[13].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[13].enabled,
                                title: controller.lessons[13].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[14].url,
                                    horizontal: controller.lessons[14].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[14].enabled,
                                title: controller.lessons[14].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[15].url,
                                    horizontal: controller.lessons[15].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[15].enabled,
                                title: controller.lessons[15].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 17) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[10].url,
                                    horizontal: controller.lessons[10].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[10].enabled,
                                title: controller.lessons[10].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[11].url,
                                    horizontal: controller.lessons[11].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[11].enabled,
                                title: controller.lessons[11].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[12].url,
                                    horizontal: controller.lessons[12].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[12].enabled,
                                title: controller.lessons[12].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[13].url,
                                    horizontal: controller.lessons[13].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[13].enabled,
                                title: controller.lessons[13].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[14].url,
                                    horizontal: controller.lessons[14].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[14].enabled,
                                title: controller.lessons[14].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[15].url,
                                    horizontal: controller.lessons[15].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[15].enabled,
                                title: controller.lessons[15].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[16].url,
                                    horizontal: controller.lessons[16].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[16].enabled,
                                title: controller.lessons[16].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 18) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[10].url,
                                    horizontal: controller.lessons[10].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[10].enabled,
                                title: controller.lessons[10].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[11].url,
                                    horizontal: controller.lessons[11].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[11].enabled,
                                title: controller.lessons[11].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[12].url,
                                    horizontal: controller.lessons[12].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[12].enabled,
                                title: controller.lessons[12].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[13].url,
                                    horizontal: controller.lessons[13].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[13].enabled,
                                title: controller.lessons[13].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[14].url,
                                    horizontal: controller.lessons[14].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[14].enabled,
                                title: controller.lessons[14].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[15].url,
                                    horizontal: controller.lessons[15].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[15].enabled,
                                title: controller.lessons[15].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[16].url,
                                    horizontal: controller.lessons[16].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[16].enabled,
                                title: controller.lessons[16].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[17].url,
                                    horizontal: controller.lessons[17].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[17].enabled,
                                title: controller.lessons[17].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 19) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[10].url,
                                    horizontal: controller.lessons[10].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[10].enabled,
                                title: controller.lessons[10].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[11].url,
                                    horizontal: controller.lessons[11].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[11].enabled,
                                title: controller.lessons[11].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[12].url,
                                    horizontal: controller.lessons[12].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[12].enabled,
                                title: controller.lessons[12].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[13].url,
                                    horizontal: controller.lessons[13].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[13].enabled,
                                title: controller.lessons[13].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[14].url,
                                    horizontal: controller.lessons[14].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[14].enabled,
                                title: controller.lessons[14].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[15].url,
                                    horizontal: controller.lessons[15].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[15].enabled,
                                title: controller.lessons[15].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[16].url,
                                    horizontal: controller.lessons[16].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[16].enabled,
                                title: controller.lessons[16].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[17].url,
                                    horizontal: controller.lessons[17].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[17].enabled,
                                title: controller.lessons[17].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[18].url,
                                    horizontal: controller.lessons[18].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[18].enabled,
                                title: controller.lessons[18].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else if (controller.lessons.length == 20) {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Stack(
              children: [
                Transform.rotate(
                  angle: -9.4,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[0].url,
                                    horizontal: controller.lessons[0].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[0].enabled,
                                title: controller.lessons[0].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[1].url,
                                    horizontal: controller.lessons[1].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[1].enabled,
                                title: controller.lessons[1].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket3.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[2].url,
                                    horizontal: controller.lessons[2].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[2].enabled,
                                title: controller.lessons[2].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket4.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[3].url,
                                    horizontal: controller.lessons[3].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[3].enabled,
                                title: controller.lessons[3].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[4].url,
                                    horizontal: controller.lessons[4].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[4].enabled,
                                title: controller.lessons[4].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[5].url,
                                    horizontal: controller.lessons[5].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[5].enabled,
                                title: controller.lessons[5].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[6].url,
                                    horizontal: controller.lessons[6].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[6].enabled,
                                title: controller.lessons[6].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[7].url,
                                    horizontal: controller.lessons[7].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[7].enabled,
                                title: controller.lessons[7].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[8].url,
                                    horizontal: controller.lessons[8].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[8].enabled,
                                title: controller.lessons[8].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[9].url,
                                    horizontal: controller.lessons[9].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[9].enabled,
                                title: controller.lessons[9].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[10].url,
                                    horizontal: controller.lessons[10].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[10].enabled,
                                title: controller.lessons[10].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket10.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[11].url,
                                    horizontal: controller.lessons[11].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[11].enabled,
                                title: controller.lessons[11].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket5.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[12].url,
                                    horizontal: controller.lessons[12].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[12].enabled,
                                title: controller.lessons[12].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket2.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[13].url,
                                    horizontal: controller.lessons[13].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[13].enabled,
                                title: controller.lessons[13].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[14].url,
                                    horizontal: controller.lessons[14].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[14].enabled,
                                title: controller.lessons[14].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket9.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[15].url,
                                    horizontal: controller.lessons[15].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[15].enabled,
                                title: controller.lessons[15].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket1.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[16].url,
                                    horizontal: controller.lessons[16].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[16].enabled,
                                title: controller.lessons[16].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket8.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[17].url,
                                    horizontal: controller.lessons[17].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[17].enabled,
                                title: controller.lessons[17].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket6.json', right: true,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[18].url,
                                    horizontal: controller.lessons[18].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[18].enabled,
                                title: controller.lessons[18].name),
                            RocketLessonWidget(
                                file: 'assets/images/rocket7.json', right: false,
                                onTap: () {
                                  Get.to(LessonPage(url: controller.lessons[19].url,
                                    horizontal: controller.lessons[19].horezontal,
                                  )); 
                                  onTapWithAudio(); controller.assetsAudioPlayer.stop();
                                },
                                enabled: controller.lessons[19].enabled,
                                title: controller.lessons[19].name),

                          ],
                        )
                      ],
                    ),
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
                                    size: 40,
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
                                      onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
        } else {
          return ScaffoldGradientBackground(
            gradient: RadialGradient(
              colors: [
                Color(0xFF081371),
                Color(0xFF052862),
              ],
            ),
            body: Transform.rotate(
              angle: 0,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height *0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text("لا يوجد دروس", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),)
                        ],
                      ),
                    ),
                    SafeArea(
                      child: Container(
                        height: MediaQuery.of(context).size.height *0.95,
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
                                        size: 40,
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
                                          onTapWithAudio(); controller.assetsAudioPlayer.stop();
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
              ),
            ),
          );
        }
      }});
  }
}
