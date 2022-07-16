import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class LessonController extends GetxController {

  AdRequest? adRequest;
  BannerAd? bannerAd;
  InterstitialAd? interstitialAd;

  RewardedAd? rewardedAd;

  @override
  void onClose() {
    print('LessonController onClose');
    super.onClose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void onInit() async {
    print('LessonController onInit');
    final FirebaseFirestore db = FirebaseFirestore.instance;
    final enableAd = await db.collection('ad').doc('W6S5BMomgMEfMM4nP7wd').get();
    super.onInit();
    if(enableAd.data()!['value'] == true){
      InterstitialAd.load(
        adUnitId: Platform.isAndroid
            ? "ca-app-pub-5045623757292753/9918289175"
            : "ca-app-pub-5045623757292753/2638549043",
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            interstitialAd = ad;
            ad.show();
          },
          onAdFailedToLoad: (err) {
            interstitialAd?.dispose();
          },
        ),
      );
    }else{

    }
  }
}