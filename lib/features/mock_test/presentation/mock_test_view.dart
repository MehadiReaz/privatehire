import 'package:flutter/material.dart';
import 'package:privatehire/global/presentation/components/custom_text.dart';
import '../components/formated_time_test_container.dart';
import '../components/past_tests_container.dart';
import '../components/start_mock_test_container.dart';

class MockTestView extends StatelessWidget {
  const MockTestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                ),
                child: Image.asset('assets/images/Frame 1171277043.png'),
              ),
              const SizedBox(height: 30,),
              StartMockTestContainer(),
              const SizedBox(height: 30,),
              const FormatedTimeTestContainer(),
              const SizedBox(height: 30,),
              const CustomText(text: 'Past Tests', fontWeight: FontWeight.w600,),
              const SizedBox(height: 20,),
              const PastTestsContainer(),
            ],
          ),
        ),
      ),
    );
  }
}