import 'package:get/get.dart';
import '../controller/mock_test_controller.dart';

class MockTestBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> MockTestController());
  }
}