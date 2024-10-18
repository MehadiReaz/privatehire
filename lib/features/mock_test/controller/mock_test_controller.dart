import 'package:get/get.dart';

class MockTestController extends GetxController {
  var selectedQuestion = 20.obs; // Initially select 20 questions

  void selectQuestion(int question) {
    selectedQuestion.value = question;
  }
}
