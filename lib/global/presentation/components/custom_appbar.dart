import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final Color? iconColor;
  final double iconSize;
  final double borderWidth;

  const CustomAppBar({
    super.key,
    this.backgroundColor = Colors.transparent,
    this.iconColor = Colors.black,
    this.iconSize = 24.0,
    this.borderWidth = 1.5,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: iconColor!,
              width: borderWidth,
            ),
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
