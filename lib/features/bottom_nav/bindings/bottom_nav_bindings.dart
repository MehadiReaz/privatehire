import 'package:get/get.dart';
import 'package:privatehire/features/bottom_nav/controller/bottom_nav_controller.dart';

class BottomNavBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> BottomNavController());
  }
}