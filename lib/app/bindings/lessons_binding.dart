import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../controller/lessons_controller.dart';

class LessonsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LessonsController>(() => LessonsController());
  }
}