import 'package:am_project/core/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Text14 extends StatelessWidget {
  final String text;
  final Color? color;
  final bool isRegular;
  final bool isLinear;
  final TextAlign? textAlign;
  const Text14(
      {super.key,
      required this.text,
      this.color,
      this.isLinear = false,
      required this.isRegular,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return isLinear
        ? ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) =>
                const LinearGradient(colors: AppColors.primaryRed).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: "Poppins",
                  fontWeight: isRegular ? FontWeight.w400 : FontWeight.w500),
              textAlign: textAlign ?? TextAlign.center,
            ),
          )
        : Text(
            text,
            style: TextStyle(
                fontSize: 14.sp,
                fontFamily: "Poppins",
                color: color ?? AppColors.black,
                fontWeight: isRegular ? FontWeight.w400 : FontWeight.w500),
            textAlign: textAlign ?? TextAlign.center,
          );
  }
}
