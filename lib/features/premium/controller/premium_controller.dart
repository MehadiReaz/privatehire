import 'package:get/get.dart';

class PremiumController extends GetxController {
  var selectedPlanIndex = 1.obs;

  void changePlan(int index) {
    selectedPlanIndex.value = index;
  }
}
