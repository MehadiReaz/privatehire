import 'package:get/get.dart';
import 'package:privatehire/features/auth/reset_password/contorller/reset_password_controller.dart';

class ResetPasswordBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> ResetPasswordController());
  }
}