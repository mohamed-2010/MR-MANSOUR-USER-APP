import 'dart:ui';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:untitled1/app/model/phase_study_model.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  AnimationController? controller;
  Animation<Offset>? offsetAnimation;
  AnimationController? textController;
  Animation<Offset>? textOffsetAnimation;
  AnimationController? smallcontroller;
  Animation<Offset>? smalloffsetAnimation;
  AnimationController? widgetOneController;
  Animation<Offset>? widgetOneOffsetAnimation;
  AnimationController? widgetTwoController;
  Animation<Offset>? widgetTwoOffsetAnimation;
  AnimationController? widgetThreeController;
  Animation<Offset>? widgetThreeOffsetAnimation;
  AnimationController? widgetFourController;
  Animation<Offset>? widgetFourOffsetAnimation;
  AnimationController? widgetFiveController;
  Animation<Offset>? widgetFiveOffsetAnimation;
  AnimationController? widgetSixController;
  Animation<Offset>? widgetSixOffsetAnimation;
  final assetsAudioPlayer = AssetsAudioPlayer();
  var isLoading = false.obs;
  List studyphase = <PhaseStudyModel>[].obs;

  //function to get data from fireStore database and set it to studyphase variable to be used in the app
  Future getStudyPhase() async {
    isLoading.value = true;
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("StudyPhase").get();
    for (int i = 0; i < querySnapshot.docs.length; i++) {
      var a = querySnapshot.docs[i];
      studyphase.add(PhaseStudyModel(
        id: a.id,
        StudyPhaseName: a.get('StudyPhaseName'),
        enable: a.get('enable')
      ));
      print(a.id);
    }
    isLoading.value = false;
    update();
  }


  @override
  void onInit() {
    super.onInit();
    assetsAudioPlayer.open(
      Audio("assets/audio/rocket.mp3"),
      showNotification: true,
    );
    getStudyPhase();
    controller =
    AnimationController(vsync: this, duration: Duration(seconds: 2));
    offsetAnimation =
        Tween<Offset>(begin: Offset(0.0, 1.5), end: Offset.zero).animate(
            CurvedAnimation(parent: controller!, curve: Curves.decelerate));
    controller!.forward();
    textController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    textOffsetAnimation =
        Tween<Offset>(begin: Offset(0.0, 1.5), end: Offset.zero).animate(
            CurvedAnimation(parent: textController!, curve: Curves.decelerate));
    textController!.forward();
    smallcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat(reverse: true);
    smalloffsetAnimation =
        Tween<Offset>(begin: Offset.zero, end: Offset(0.0,0.1)).animate(
            CurvedAnimation(parent: smallcontroller!, curve: Curves.decelerate));
    widgetOneController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    widgetOneOffsetAnimation =
        Tween<Offset>(begin: Offset(1.5,0.0), end: Offset.zero).animate(
            CurvedAnimation(parent: widgetOneController!, curve: Curves.decelerate));
    widgetOneController!.forward();
    widgetTwoController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    widgetTwoOffsetAnimation =
        Tween<Offset>(begin: Offset(-1.5,0.0), end: Offset.zero).animate(
            CurvedAnimation(parent: widgetTwoController!, curve: Curves.decelerate));
    widgetTwoController!.forward();
    widgetThreeController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    widgetThreeOffsetAnimation =
        Tween<Offset>(begin: Offset(1.5,0.0), end: Offset.zero).animate(
            CurvedAnimation(parent: widgetThreeController!, curve: Curves.decelerate));
    widgetThreeController!.forward();
     widgetFourController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    widgetFourOffsetAnimation =
        Tween<Offset>(begin: Offset(-1.5,0.0), end: Offset.zero).animate(
            CurvedAnimation(parent: widgetFourController!, curve: Curves.decelerate));
    widgetFourController!.forward();
     widgetFiveController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    widgetFiveOffsetAnimation =
        Tween<Offset>(begin: Offset(1.5,0.0), end: Offset.zero).animate(
            CurvedAnimation(parent: widgetFiveController!, curve: Curves.decelerate));
    widgetFiveController!.forward();
     widgetSixController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    widgetSixOffsetAnimation =
        Tween<Offset>(begin: Offset(-1.5,0.0), end: Offset.zero).animate(
            CurvedAnimation(parent: widgetSixController!, curve: Curves.decelerate));
    widgetSixController!.forward();

  }
}