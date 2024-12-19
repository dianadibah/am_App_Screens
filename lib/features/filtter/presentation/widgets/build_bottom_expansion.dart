import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/design/constant.dart';

class BuildBottomExpansion extends StatelessWidget {
  const BuildBottomExpansion(
      {super.key, this.onResetTap, required this.titleSearch});
  final void Function()? onResetTap;
  final String titleSearch;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: AppColors.greyFormFeild,
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
              start: kswSizeWidth12, end: kswSizeWidth24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: onResetTap,
                  child: const Text12(
                    text: "Reset",
                    isRegular: true,
                    isLinear: true,
                  )),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: kswSizeWidth8, vertical: 2.h),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.greyBorder, width: 1.sp),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Text12(
                  text: titleSearch,
                  color: AppColors.greyText,
                  isRegular: true,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
