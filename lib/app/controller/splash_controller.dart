import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_animations/main.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:new_version/new_version.dart';

import '../view/page/login_page.dart';
import 'login_controller.dart';

class SplashController extends GetxController {
  @override
  void onInit() async{
    print('SplashController onInit');
    bool result = await InternetConnectionChecker().hasConnection;
    final newVersion = NewVersion(iOSId: '' , androidId: '');
    newVersion.showAlertIfNecessary(context: Get.context!);
    final status = await newVersion.getVersionStatus();
    if(result == true){
      if(status != null){
        newVersion.showUpdateDialog(
          context: Get.context!,
          versionStatus: status,
          dialogTitle: 'Update Available',
          dialogText: 'A new version of the app is available. Please update to continue using the app.',
          allowDismissal: false,
          updateButtonText: 'Update',
        );
      }
      else{
        Future.delayed(const Duration(seconds: 2), () {
        LoginController controller = Get.find<LoginController>();
        if (controller.auth.currentUser != null) {
          Get.offAndToNamed('/home');
        } else {
          Get.offAndToNamed('/login');
        }
        });
      }
    }else{
      Get.snackbar(
        'No Internet Connection',
        'Please check your internet connection and try again.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        duration: Duration(seconds: 500),
        icon: Icon(
          Icons.error,
          color: Colors.white,
        ),
        colorText: Colors.white,
      );
    }
    // Future.delayed(const Duration(seconds: 4), () {
    //
    // });
    super.onInit();
  }
}