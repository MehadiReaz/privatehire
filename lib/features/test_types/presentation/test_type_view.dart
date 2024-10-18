import 'package:flutter/material.dart';
import 'package:privatehire/global/presentation/components/custom_text.dart';

class TestTypeView extends StatelessWidget {
  const TestTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: const BoxDecoration(color: Color(0xFFD9EAE8)),
              child: const Column(
                children: [
                  CustomText(
                    text: 'Start A New mock Test',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
