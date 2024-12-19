import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/text/Text8.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ComunicationButton extends StatelessWidget {
  final double height;
  final double width;
  final String? title;
  final String svgUrl;
  final void Function() onTap;
  const ComunicationButton(
      {super.key,
      required this.height,
      required this.width,
      required this.svgUrl,
      required this.onTap,
      this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.redCarBold),
          borderRadius: BorderRadius.circular(kbrCardBorderRadius4),
        ),
        child: Padding(
          padding: EdgeInsets.all(6.0.w),
          child: title != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      svgUrl,
                      color: AppColors.redCarBold,
                    ),
                    Text8(
                      text: title!,
                      isRegular: false,
                      isLinear: true,
                    )
                  ],
                )
              : SvgPicture.asset(
                  svgUrl,
                  color: AppColors.redCarBold,
                ),
        ),
      ),
    );
  }
}
