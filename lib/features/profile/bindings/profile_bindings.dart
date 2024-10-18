import 'package:get/get.dart';
import 'package:privatehire/features/profile/controller/profile_controller.dart';

class ProfileBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> ProfileController());
  }
}