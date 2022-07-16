import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/app/view/page/enter_otp_code_page.dart';
import 'package:untitled1/app/view/page/home.dart';

import '../../network/app_firebase.dart';

class LoginController extends GetxController with SingleGetTickerProviderMixin {
  TextEditingController otpController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  String code = "+20";
  RxString numberError = RxString("");
  RxString nameError = RxString("");
  RxString pinError = RxString("");
  FirebaseAuth auth = FirebaseAuth.instance;
  AppFirebase appFirebase = AppFirebase();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late String number;
  RxBool isLoading = RxBool(false);

  AnimationController? controller;
  Animation<Offset>? offsetAnimation;

  @override
  void onInit() {
    super.onInit();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat(reverse: true);
    offsetAnimation = Tween<Offset>(begin: Offset.zero , end: Offset(1.5,0.0)).animate(CurvedAnimation(parent: controller!, curve: Curves.elasticIn));
  }
  @override
  void onClose() {
    super.onClose();
    otpController.dispose();
  }

  void sendOTP() async {
    if (numberController.text.isEmpty) {
      numberError("Field is required");
    } else if (numberController.text.length < 10) {
      numberError.value = "Invalid Number";
    } else {
      numberError("");
      number = code + numberController.text;
      await appFirebase.sendVerificationCode(number);
    }
  }

  void verifyOTP() async {
    if (otpController.text.isEmpty) {
      pinError.value = "Field is required";
    } else if (otpController.text.length < 6) {
      pinError.value = "Invalid Pin";
    } else {
      print("start Verify");
      isLoading.value = true;
      print("loading");
      await appFirebase.verifyOTP(otpController.text);
      await firestore.collection('users').add({'phone':code + numberController.text});
      print("end Verify");
      isLoading.value = false;
      print("end loading");
      Get.offAndToNamed('/home');
    }
  }
}