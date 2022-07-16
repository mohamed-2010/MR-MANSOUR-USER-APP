import 'package:get/get.dart';
import 'package:untitled1/app/controller/home_comtroller.dart';

import '../controller/login_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}