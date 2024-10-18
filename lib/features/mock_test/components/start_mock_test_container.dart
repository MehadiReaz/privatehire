import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../global/presentation/components/custom_text.dart';
import '../controller/mock_test_controller.dart';

class StartMockTestContainer extends StatelessWidget {
  final MockTestController controller =
  Get.put(MockTestController());

  StartMockTestContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xFFD9EAE8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: 'Start A New Mock Test',
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 10,),
          const CustomText(
            text: 'Select number of Questions',
            fontSize: 12,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              _buildQuestionButton(20), // Button for 20 questions
              const SizedBox(width: 15),
              _buildQuestionButton(40), // Button for 40 questions
              const SizedBox(width: 15),
              _buildQuestionButton(60), // Button for 60 questions
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.5, vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        colors: [Color(0xFF00A691), Color(0xFF007465)])),
                child: const CustomText(
                  text: 'Start',
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildQuestionButton(int question) {
    return Obx(() {
      bool isSelected = controller.selectedQuestion.value == question;
      return InkWell(
        onTap: () =>
            controller.selectQuestion(question), // Change selection on tap
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 5.5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: isSelected
                ? const LinearGradient(
                colors: [Color(0xFF00A691), Color(0xFF007465)])
                : const LinearGradient(colors: [
              Colors.white,
              Colors.white
            ]), // White for unselected
          ),
          child: CustomText(
            text: '$question', // Show the question count
            color: isSelected
                ? Colors.white
                : Colors.black, // Change text color
          ),
        ),
      );
    });
  }
}
