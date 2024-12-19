import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/custom_button.dart';
import '../../../../core/constant/general_widget/sized_boxes/sw.dart';

class BuildBottomNavigationFilter extends StatelessWidget {
  const BuildBottomNavigationFilter(
      {super.key, this.onApplyPressed, this.onResetPressed});
  final void Function()? onApplyPressed;
  final void Function()? onResetPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70.h,
        decoration: BoxDecoration(
            color: AppColors.scaffoldBackgroundColor,
            borderRadius: BorderRadiusDirectional.all(
              Radius.circular(5.r),
            ),
            boxShadow: [
              BoxShadow(
                  color: AppColors.black.withOpacity(.2),
                  offset: const Offset(-1, 0),
                  blurRadius: 2)
            ]),
        child: IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SW40(),
              Expanded(
                child: CustomButton(
                    onPressed: onApplyPressed,
                    isFilled: true,
                    borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(kbrCardBorderRadius50)),
                    child: const Text14(
                      text: "Apply",
                      isRegular: true,
                      color: AppColors.white,
                    )),
              ),
              const SW48(),
              Expanded(
                child: CustomButton(
                  onPressed: onResetPressed,
                  isFilled: false,
                  borderRadius: BorderRadiusDirectional.all(
                      Radius.circular(kbrCardBorderRadius50)),
                  child: const Text14(
                    text: "Reset",
                    color: AppColors.redCarBold,
                    isRegular: true,
                    isLinear: true,
                  ),
                ),
              ),
              const SW40(),
            ],
          ),
        ));
  }
}
