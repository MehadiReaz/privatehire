import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:privatehire/features/qs_type/presentation/test_success_screen.dart';
import 'package:privatehire/global/presentation/components/custom_material_button.dart';

class QsTypeView extends StatefulWidget {
  const QsTypeView({super.key});

  @override
  MCQQsTypeViewState createState() => MCQQsTypeViewState();
}

class MCQQsTypeViewState extends State<QsTypeView> {
  List<int> selectedIndexes = [];

  final List<String> options = [
    "a. We Believe A Fair And Easy Choice Must Be Available When It Comes To Learn Something New. London TZ Has Made It Easy For Everyone To Pass All Your",
    "b. We Believe A Fair And Easy Choice Must Be Available When It Comes To Learn Something New. London TZ Has Made It Easy For Everyone To Pass All Your",
    "c. We Believe A Fair And Easy Choice Must Be Available When It Comes To Learn Something New. London TZ Has Made It Easy For Everyone To Pass All Your",
  ];

  void toggleSelection(int index) {
    setState(() {
      if (selectedIndexes.contains(index)) {
        selectedIndexes.remove(index);
      } else {
        selectedIndexes.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 1.5,
              ),
            ),
            child: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16, top: 12),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFD9EAE8),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text(
              '7/20',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Question',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'How To Prove That You Have A B1 Level Of Ability In The English Language?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Select 2 Correct Answers',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Flexible(
              child: ListView.builder(
                itemCount: options.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndexes.contains(index);
                  return GestureDetector(
                    onTap: () => toggleSelection(index),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 5),
                              color: Colors.white.withOpacity(.05),
                              blurRadius: 50,
                              spreadRadius: 0)
                        ],
                        color:
                            isSelected ? const Color(0xFFD9EAE8) : Colors.white,
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xFFD9EAE8)
                              : Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        options[index],
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomMaterialButton(
                  onTap: () {
                    Get.to(() => const TestSuccessfulScreen());
                  },
                  text: 'Next',
                  height: 50,
                  textColor: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
