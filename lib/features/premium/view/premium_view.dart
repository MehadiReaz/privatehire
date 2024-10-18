import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/premium_controller.dart';

class PremiumView extends StatelessWidget {
  const PremiumView({super.key});

  @override
  Widget build(BuildContext context) {
    final PremiumController controller = Get.put(PremiumController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Image.asset('assets/images/Frame 1171277043.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 200,
                  child: Text(
                    "Unlimited access to all the features!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF007465),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Features list
                const FeatureList(),
                const SizedBox(height: 20),
                // Subscription Plans
                Obx(() => Column(
                      children: [
                        SubscriptionOption(
                          label: "1 Month",
                          price: "£19.99",
                          index: 1,
                          isSelected: controller.selectedPlanIndex.value == 1,
                          onTap: () => controller.changePlan(1),
                          recurringInfo: "Monthly recurring",
                        ),
                        const SizedBox(height: 10),
                        SubscriptionOption(
                          label: "3 Month",
                          price: "£29.99",
                          discountPrice: "£69.97",
                          tag: "Frequently Bought",
                          index: 2,
                          isSelected: controller.selectedPlanIndex.value == 2,
                          onTap: () => controller.changePlan(2),
                          discountText: "Especial Offer 50% Discount",
                          recurringInfo: "Quarterly recurring",
                        ),
                        const SizedBox(height: 10),
                        SubscriptionOption(
                          label: "12 Month",
                          price: "£34.99",
                          discountPrice: "£239.88",
                          tag: "Best Value",
                          index: 3,
                          isSelected: controller.selectedPlanIndex.value == 3,
                          onTap: () => controller.changePlan(3),
                          discountText: "Especial Offer 50% Discount",
                          recurringInfo: "Yearly recurring",
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// A widget that shows the feature list
class FeatureList extends StatelessWidget {
  const FeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeatureItem("All in one SERU + Topographical + Speaking and Listening"),
        FeatureItem("1000+ Multiple Choice Questions"),
        FeatureItem("New TFL exam"),
        FeatureItem("Unlimited Mock Test"),
        FeatureItem("Free Translation for easy Understanding"),
      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String feature;

  const FeatureItem(this.feature, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Color(0xFF007465), size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              feature,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}

class SubscriptionOption extends StatelessWidget {
  final String label;
  final String price;
  final String? discountPrice;
  final String? tag;
  final String recurringInfo;
  final int index;
  final bool isSelected;
  final String? discountText;
  final Function() onTap;

  const SubscriptionOption({
    super.key,
    required this.label,
    required this.price,
    this.discountPrice,
    this.tag,
    this.discountText,
    required this.recurringInfo,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF007465)
                      : Colors.grey.shade300,
                  width: isSelected ? 2 : 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: isSelected
                              ? const Color(0xFF007465)
                              : Colors.black87,
                        ),
                      ),
                      // Center price and checkmark
                      Row(
                        children: [
                          Column(
                            children: [
                              if (discountPrice != null)
                                Text(
                                  discountPrice!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade600,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              Text(
                                price,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: isSelected
                                      ? const Color(0xFF007465)
                                      : Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          if (isSelected)
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF007465),
                              ),
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 15,
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                  if (discountText != null)
                    Text(
                      discountText!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  const SizedBox(height: 8),
                  Text(
                    recurringInfo,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (tag != null)
            Positioned(
              top: 0,
              left: 15,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF007465),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFFFB8A2E),
                      size: 12,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      tag!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
