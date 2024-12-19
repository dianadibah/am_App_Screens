import 'package:am_project/core/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SvgTextColumn extends StatelessWidget {
  final String svgPath;
  final double width;
  final double spaceBtween;
  final Widget text;
  final Color color;
  final MainAxisAlignment? alignment;
  const SvgTextColumn(
      {super.key,
      required this.svgPath,
      required this.width,
      required this.spaceBtween,
      required this.text,
      this.alignment,
      this.color = AppColors.black});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          svgPath,
          width: width.w,
          color: color,
        ),
        SizedBox(
          height: spaceBtween.w,
        ),
        text
      ],
    );
  }
}
