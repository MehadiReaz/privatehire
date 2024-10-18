import 'package:get/get.dart';
import 'package:privatehire/features/theory/controller/theory_controller.dart';

class TheoryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TheoryController());
  }
}
