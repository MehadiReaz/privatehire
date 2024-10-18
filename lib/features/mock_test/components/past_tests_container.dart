import 'package:flutter/material.dart';

import '../../../global/presentation/components/custom_text.dart';

class PastTestsContainer extends StatelessWidget {
  const PastTestsContainer({super.key});

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
              text: 'Test #012',
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomText(
              text: 'Score: 32\nProgress: 45/90',
              fontSize: 12,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.5, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: const CustomText(
                    text: 'Continue',
                    color: Colors.black,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
