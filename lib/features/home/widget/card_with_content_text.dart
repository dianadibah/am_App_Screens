import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/config/app_images.dart';
import '../../../core/constant/general_widget/text/text12.dart';

class CustomCardHomeWithContentText extends StatelessWidget {
  final String text;
  final String? textButton;
  final void Function()? onPressed;

  const CustomCardHomeWithContentText(
      {super.key,
      required this.text,
      this.onPressed,
      required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156.h,
      width: kshSizeWidth310,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: AppColors.blackGradiant,
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(
          horizontal: kswSizeWidth24, vertical: kshSizeHeight16),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        clipBehavior: Clip.none,
        children: [
          PositionedDirectional(
              end: -10.w,
              top: -25.h,
              bottom: 0.h,
              child: Image.asset(
                AppImages.woman,
                height: 170.h,
                width: 170.w,
                fit: BoxFit.cover,
              )),
          Container(
            child: Stack(
              clipBehavior: Clip.antiAlias,
              children: [
                PositionedDirectional(
                  start: -70.w,
                  top: -90.h,
                  child: Opacity(
                    opacity: 0.15,
                    child: CircleAvatar(
                      backgroundColor: AppColors.grey,
                      radius: 80.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kswSizeWidth12),
            child: SizedBox(
              width: kshSizeWidth200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                      maxLines: 6,
                      softWrap: true,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.white, fontSize: 12.sp),
                      text),
                  CustomButton(
                    isBorderVisibel: false,
                    width: 95.w,
                    height: 30.h,
                    onPressed: onPressed,
                    isFilled: false,
                    child: Text12(text: textButton ?? "", isRegular: false),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
