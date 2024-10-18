import 'package:get/get.dart';
import 'package:privatehire/features/bottom_nav/controller/bottom_nav_controller.dart';
import 'package:privatehire/features/home/controller/home_controller.dart';

import '../../features/splash_screen/controller/splash_controller.dart';

class InitialBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController(),permanent: true);
    Get.put(BottomNavController(),permanent: true);
    Get.put(HomeController(),permanent: true);

  }


}