import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/custom_button.dart';
import '../../../../core/constant/general_widget/sized_boxes/sw.dart';
import '../../../../core/constant/general_widget/text/text12.dart';

class BuildBottomNavigationAddAds extends StatelessWidget {
  const BuildBottomNavigationAddAds(
      {super.key, this.onCallPressed, this.onNextPressed});

  final void Function()? onCallPressed;
  final void Function()? onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerEnd,
      height: 60.h,
      padding: EdgeInsetsDirectional.only(
          start: kswSizeWidth32, end: kswSizeWidth32),
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
      child: InkWell(
        onTap: onNextPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text12(
              text: "Next",
              isRegular: true,
              color: AppColors.greyText,
            ),
            const SW8(),
            Icon(
              Icons.arrow_forward_outlined,
              color: AppColors.greyText,
              size: 14.sp,
            )
          ],
        ),
      ),
    );
  }
}
