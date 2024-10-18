import 'package:get/get.dart';

import '../controller/chapter_details_controller.dart';

class ChapterDetailsBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ChapterDetailsController(),);
  }
}