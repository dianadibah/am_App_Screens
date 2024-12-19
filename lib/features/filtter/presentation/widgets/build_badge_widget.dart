import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/config/app_font.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/sized_boxes/sw.dart';

class BuildBadgeWidget extends StatelessWidget {
  const BuildBadgeWidget(
      {super.key,
      this.onCancelTap,
      required this.title,
      this.icon,
      this.onTap,
      this.isGradient = true,
      this.colorBorder});

  final void Function()? onCancelTap;
  final String title;
  final IconData? icon;
  final bool? isGradient;
  final Color? colorBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(
            horizontal: kswSizeWidth8, vertical: kswSizeWidth4),
        decoration: BoxDecoration(
            border: (isGradient ?? true)
                ? null
                : Border.all(color: colorBorder ?? AppColors.grey, width: 1.sp),
            borderRadius: BorderRadius.circular(5.r),
            gradient: (isGradient ?? true)
                ? const LinearGradient(colors: AppColors.primaryRed)
                : null),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text14(
              text: title,
              color: (isGradient ?? true)
                  ? AppColors.white
                  : colorBorder ?? AppColors.grey,
              isRegular: true,
            ),
            if (icon != null) const SW4(),
            if (icon != null)
              InkWell(
                onTap: onCancelTap,
                child: Icon(
                  icon,
                  color: AppColors.white,
                  size: 16.sp,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
