import 'package:get/get.dart';
import 'package:privatehire/features/auth/registration/controller/register_controller.dart';

class RegisterBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> RegisterController());
  }
}