import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_colors.dart';
import 'sized_boxes/sw.dart';

class BuildCustomLine extends StatelessWidget {
  const BuildCustomLine(
      {super.key,
      required this.title,
      this.showLine = true,
      this.onTap,
      this.isActive});

  final String title;
  final bool? showLine;
  final bool? isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: kswSizeWidth16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: onTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 15.r,
                  width: 15.r,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: (isActive ?? false)
                        ? const LinearGradient(colors: AppColors.primaryRed)
                        : null,
                    color: (isActive ?? false) ? null : AppColors.greyCircle,
                  ),
                ),
                const SW12(),
                Text12(
                  text: title,
                  color: (isActive ?? false)
                      ? AppColors.redCarBold
                      : AppColors.greyText,
                  isLinear: (isActive ?? false) ? true : false,
                  isRegular: true,
                ),
              ],
            ),
          ),
          if (showLine ?? true)
            Padding(
              padding: EdgeInsetsDirectional.only(start: kswSizeWidth8),
              child: Dash(
                  direction: Axis.vertical,
                  length: 40.w,
                  dashLength: 6.sp,
                  dashColor: AppColors.grey),
            ),
        ],
      ),
    );
  }
}
