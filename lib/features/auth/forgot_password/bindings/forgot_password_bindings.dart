import 'package:get/get.dart';
import 'package:privatehire/features/auth/forgot_password/controller/forgot_password_controller.dart';

class ForgotPasswordBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> ForgotPasswordController());
  }
}