import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/general_widget/show_svg.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:am_project/core/constant/general_widget/text/Text8.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/app_images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      this.hasShadow = true,
      this.hasAction = true,
      this.leading,
      this.subtitle,
      this.imagePath});

  final String title;
  final String? subtitle;
  final String? imagePath;
  final bool? hasShadow;
  final bool? hasAction;
  final Widget? leading;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 20.sp);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight + 20.sp),
      child: Container(
        padding: EdgeInsetsDirectional.only(
          top: 16.sp,
        ),
        decoration: (hasShadow ?? true)
            ? const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: AppColors.greyFormFeild,
                    offset: Offset(0, 3.0),
                    blurRadius: 2.0,
                    spreadRadius: 2)
              ])
            : null,
        alignment: AlignmentDirectional.center,
        child: AppBar(
          leading: Padding(
              padding: EdgeInsetsDirectional.only(start: 20.w),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child:
                      leading ?? const Icon(Icons.arrow_back_ios_new_rounded))),
          elevation: 10,
          leadingWidth: 43.w,
          surfaceTintColor: AppColors.scaffoldBackgroundColor,
          centerTitle: (imagePath?.isNotEmpty ?? false) ? false : true,
          title: (imagePath?.isNotEmpty ?? false)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 18.r,
                      backgroundColor: AppColors.redCarBold,
                      child: Image.asset(AppImages.man),
                    ),
                    const SW12(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text12(
                            text: title,
                            isRegular: false,
                          ),
                          if (subtitle?.isNotEmpty ?? false)
                            Text12(
                              text: subtitle ?? "",
                              isRegular: true,
                              color: AppColors.greyText,
                            )
                        ],
                      ),
                    )
                  ],
                )
              : Column(
                  children: [
                    Text14(
                      text: title,
                      isRegular: false,
                    ),
                    if (subtitle?.isNotEmpty ?? false)
                      Text12(
                        text: title,
                        isRegular: true,
                        color: AppColors.black.withOpacity(.8),
                      )
                  ],
                ),
          actions: [
            if (hasAction ?? false)
              Padding(
                padding: EdgeInsetsDirectional.only(end: 20.w),
                child: ShowSvg(
                  AppImages.logoRedSvg,
                  height: 18.sp,
                  width: 35.sp,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
