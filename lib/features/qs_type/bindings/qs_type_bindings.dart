import 'package:get/get.dart';

import '../controller/qs_type_controller.dart';

class QsTypeBindings extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(()=> QsTypeController());
  }
}