import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../global/presentation/components/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svgs/applogo.svg',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomText(
              text:  'SERU TOPOGRAPHICAL\nSPEAKING & LISTENING',
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
