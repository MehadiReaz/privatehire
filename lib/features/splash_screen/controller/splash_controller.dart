import 'dart:async';

import 'package:get/get.dart';
import 'package:privatehire/core/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    initialTasks();
  }

  void initialTasks() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () => Get.offNamedUntil(Routes.login, (route) => false),
    );
  }
}
