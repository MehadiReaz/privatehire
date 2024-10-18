import 'package:get/get.dart';

import '../controller/seru_controller.dart';

class SeruBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>SeruController());
  }
}