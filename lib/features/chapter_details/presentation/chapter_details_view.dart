import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:privatehire/core/routes/routes.dart';
import 'package:privatehire/global/presentation/components/custom_appbar.dart';
import 'package:privatehire/global/presentation/components/custom_text.dart';

import '../components/chaper_section.dart';

class ChapterDetailsView extends StatelessWidget {
  const ChapterDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                text: 'Chapter 1',
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E1E1E),
              ),
              const SizedBox(height: 15),
              const Text(
                'London PHV Driver Licensing',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(height: 16.0),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: ChapterSection(
                            title: 'Theory',
                            isLocked: false,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(Routes.questionTypes);
                            },
                            child: const ChapterSection(
                              title: 'MCQ',
                              question: '0',
                              progress: '0%',
                              isLocked: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Expanded(
                          child: ChapterSection(
                            title: 'Fill in the Blank',
                            question: '0',
                            progress: '0%',
                            isLocked: true,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: ChapterSection(
                            title: 'Paragraph Based MCQ',
                            question: '0',
                            progress: '0%',
                            isLocked: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
