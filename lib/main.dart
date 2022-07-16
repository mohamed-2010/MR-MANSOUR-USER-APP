import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:untitled1/app/routes/app_routes.dart';
import 'app/controller/login_controller.dart';
import 'app/controller/notification.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  await Firebase.initializeApp();
  await FirebaseInAppMessaging.instance.setMessagesSuppressed(true);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    final firebaseMessaging = FCM();
    firebaseMessaging.setNotifications();

    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<LoginController>(() => LoginController());
    LoginController controller = Get.find<LoginController>();
    return GetMaterialApp(
      //locale: const Locale('ar', 'EG'),
      //fallbackLocale: const Locale('en', 'US'),
      title: 'اهلا كونكت Hello Connect',
      //initialRoute: controller.auth.currentUser != null ? AppRoutes.homeScreen : AppRoutes.LoginScreen,
      initialRoute: AppRoutes.Sphlash,
      getPages: AppPages.list,
    );
  }
}