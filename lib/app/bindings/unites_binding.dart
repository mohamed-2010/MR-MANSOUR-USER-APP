import 'package:get/get.dart';
import 'package:untitled1/app/controller/unites_controller.dart';

class UnitesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnitesController>(() => UnitesController());
  }
}