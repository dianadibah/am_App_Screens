import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgTextRow extends StatelessWidget {
  final String svgPath;
  final double width;
  final double spaceBtween;
  final Widget text;
  final MainAxisAlignment? alignment;
  const SvgTextRow(
      {super.key,
      required this.svgPath,
      required this.width,
      required this.spaceBtween,
      required this.text,
      this.alignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment ?? MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          svgPath,
          width: width.w,
        ),
        SizedBox(
          width: spaceBtween.w,
        ),
        text
      ],
    );
  }
}
