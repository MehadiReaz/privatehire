import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privatehire/features/home/components/grid_items.dart';

import '../../../global/presentation/components/custom_drawer.dart';
import '../../../global/presentation/components/gradient_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: SvgPicture.asset('assets/svgs/Sort.svg'),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Image.asset('assets/images/Frame 1171277043.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            const GridItems(),
            const SizedBox(
              height: 30,
            ),
            const GradientButton()
          ],
        ),
      ),
    );
  }
}
