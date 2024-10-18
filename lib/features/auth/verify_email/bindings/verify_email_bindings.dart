import 'package:get/get.dart';
import '../controller/verify_email_controller.dart';

class VerifyEmailBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> VerifyEmailController());
  }
}