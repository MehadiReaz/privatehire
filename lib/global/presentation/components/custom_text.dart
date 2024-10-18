import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final int? maxLines;
  final TextAlign? textAlign;  // Add textAlign as a parameter

  const CustomText({
    super.key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.maxLines,
    this.textAlign,  // Initialize the textAlign parameter
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.start,  // Use textAlign, defaulting to start
      style: GoogleFonts.roboto(
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize ?? 14.0,
        color: color ?? Colors.black,
      ),
    );
  }
}
