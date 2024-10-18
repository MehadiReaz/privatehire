import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privatehire/global/presentation/components/custom_material_button.dart';
import 'package:privatehire/global/presentation/components/custom_text.dart';

class ChapterSection extends StatelessWidget {
  final String title;
  final String? question;
  final String? progress;
  final bool isLocked;

  const ChapterSection({
    super.key,
    required this.title,
    this.question,
    this.progress,
    required this.isLocked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xFFD9EAE8),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isLocked
              ? SvgPicture.asset('assets/svgs/lock.svg')
              : const SizedBox(height: 20),
          const SizedBox(height: 5,),
          CustomText(
            text: title,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          if (question != null && progress != null) ...[

            CustomText(text: 'Question: $question'),
            CustomText(text: 'Progress: $progress'),
          ],
          const SizedBox(height: 10),
          const CustomMaterialButton(
            text: 'Start',
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}