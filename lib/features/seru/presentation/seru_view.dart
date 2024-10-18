import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:privatehire/core/routes/routes.dart';
import 'package:privatehire/global/presentation/components/custom_text.dart';

class SeruView extends StatelessWidget {
  const SeruView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(),
                child: Image.asset('assets/images/Frame 1171277043.png'),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) => InkWell(
                  onTap: (){
                    Get.toNamed(Routes.chapterDetailsScreen);
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(0, 116, 101, 0.15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Chapter $index',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF1E1E1E),
                            ),
                            const CustomText(
                              text: 'London PHV Driver Licensing',
                              fontSize: 12,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              color: Color(0xFF007465), shape: BoxShape.circle),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
             const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
