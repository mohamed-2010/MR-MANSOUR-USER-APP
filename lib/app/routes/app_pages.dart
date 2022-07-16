import 'package:get/get.dart';
import 'package:untitled1/app/bindings/home_binding.dart';
import 'package:untitled1/app/bindings/lessons_binding.dart';
import 'package:untitled1/app/bindings/splash_binding.dart';
import 'package:untitled1/app/bindings/unites_binding.dart';
import 'package:untitled1/app/routes/app_routes.dart';
import 'package:untitled1/app/view/page/home.dart';
import 'package:untitled1/app/view/page/lessons_page.dart';
import 'package:untitled1/app/view/page/login_page.dart';
import 'package:untitled1/app/view/page/sphlash.dart';
import 'package:untitled1/app/view/page/unites_page.dart';

import '../bindings/login_binding.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRoutes.LoginScreen,
        page: () => LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.homeScreen,
        page: () => HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: AppRoutes.unitesPage,
        page: () => UnitesPage(),
        binding: UnitesBinding()),
    GetPage(
        name: AppRoutes.lessonsPage,
        page: () => LessonsPage(),
        binding: LessonsBinding()),
    GetPage(
        name: AppRoutes.Sphlash,
        page: () => SplashScreen(),
        binding: SplashBinding()),

  ];
}
