import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:webviewx/webviewx.dart';

import '../../controller/lesson_controller.dart';

class LessonPage extends GetView<LessonController> {
  LessonPage({Key? key,required this.url,required this.horizontal}) : super(key: key);
  String url;
  bool horizontal = false;
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<LessonController>(() => LessonController());
    LessonController controller = Get.find<LessonController>();
    if(horizontal == false){
      return Scaffold(
        body: Stack(
          children: [
            WebViewX(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              initialContent: url,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.013,bottom: MediaQuery.of(context).size.height * 0.0),
                          child: Center(
                            child: IconButton(
                              icon: Image.asset('assets/images/back_icon.png',),
                              color: Colors.white, onPressed: () { Get.back(); },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }else{
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight
      ]);
      return OrientationBuilder(builder: (context,i){
        return Scaffold(
          body: Stack(
            children: [
              WebViewX(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                initialContent: url,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.013,bottom: MediaQuery.of(context).size.height * 0.0),
                            child: Center(
                              child: IconButton(
                                icon: Image.asset('assets/images/back_icon.png',),
                                color: Colors.white, onPressed: () { Get.back(); },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      });
    }
  }
}
