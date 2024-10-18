import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? fontSize;
  final VoidCallback? onTap; // Added onTap callback

  const CustomMaterialButton({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.onTap, // Constructor for onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Using InkWell to detect taps
      onTap: onTap, // Assign onTap action
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 43),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF007465),
              Color(0xFF00A691),
            ],
          ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: fontSize ?? 16.0,
              fontWeight: fontWeight ?? FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
