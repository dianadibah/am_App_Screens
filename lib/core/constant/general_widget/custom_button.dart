import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../config/app_colors.dart';

class CustomButton extends StatelessWidget {
  final bool isFilled;
  final bool? isFacebookButton;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final Widget child;
  final bool? isBorderVisibel;

  const CustomButton({
    super.key,
    this.isFacebookButton = false,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height,
    this.gradient,
    required this.isFilled,
    this.isBorderVisibel = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 40.h,
      decoration: BoxDecoration(
        border: isBorderVisibel!
            ? isFilled
                ? null
                : const GradientBoxBorder(
                    gradient: LinearGradient(colors: AppColors.primaryRed))
            : null,
        gradient: isFilled
            ? isFacebookButton!
                ? const LinearGradient(
                    colors: [AppColors.facebookBlue, AppColors.facebookBlue])
                : const LinearGradient(colors: AppColors.primaryRed)
            : null,
        borderRadius: borderRadius ?? BorderRadius.circular(5),
        
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          overlayColor: isFilled ? AppColors.white : AppColors.redCarBold,
          backgroundColor: isFilled ? Colors.transparent : AppColors.white,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(5)),
        ),
        child: child,
      ),
    );
  }
}
