import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/show_svg.dart';
import 'package:am_project/core/constant/global_functions.dart';
import 'package:flutter/material.dart';
import 'package:am_project/core/constant/general_widget/search_form_faild.dart';
import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/general_widget/text/text12.dart';
import 'build_image_widget.dart';

class BuildPhotoUrlTitleDescSection extends StatelessWidget {
  const BuildPhotoUrlTitleDescSection(
      {super.key, this.images, this.onPhotoTap});
  final List<File>? images;
  final GestureTapCallback? onPhotoTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 2.h, horizontal: 2.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: InkWell(
              onTap: onPhotoTap,
              child: Container(
                padding: EdgeInsetsDirectional.only(
                    start: kswSizeWidth16,
                    end: kswSizeWidth16,
                    top: kshSizeHeight32,
                    bottom: kshSizeHeight32),
                decoration: BoxDecoration(
                  color: AppColors.greyFormFeild,
                  borderRadius: BorderRadius.circular(kbrCardBorderRadius4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShowSvg(
                      AppImages.plusSvg,
                      width: 40.sp,
                      height: 40.sp,
                    ),
                    const Sh12(),
                    const Text12(text: "Add Photos", isRegular: true)
                  ],
                ),
              ),
            ),
          ),
          const Sh4(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (images?.isNotEmpty ?? false)
                ...?images?.map((image) {
                  return BuildImageWidget(image: image);
                }),
              if (images?.isEmpty ?? true) const BuildImageWidget(),
              if (images?.isEmpty ?? true) const BuildImageWidget(),
              if (images?.isEmpty ?? true) const BuildImageWidget(),
              if (images?.isEmpty ?? true) const BuildImageWidget(),
            ],
          ),
          const Sh4(),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
                vertical: kshSizeHeight8, horizontal: kswSizeWidth4),
            child: CustomSearchFormFeilad(
                myHint: "Title",
                keyboard: TextInputType.text,
                fillColor: AppColors.white,
                enabledBorderColor: AppColors.greyCircle,
                textEditingController: TextEditingController()),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
                vertical: kshSizeHeight8, horizontal: kswSizeWidth4),
            child: CustomSearchFormFeilad(
                myHint: "360 Tour URL",
                keyboard: TextInputType.text,
                fillColor: AppColors.white,
                enabledBorderColor: AppColors.greyCircle,
                textEditingController: TextEditingController()),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
                vertical: kshSizeHeight8, horizontal: kswSizeWidth4),
            child: CustomSearchFormFeilad(
                myHint: "Describe your car",
                keyboard: TextInputType.text,
                fillColor: AppColors.white,
                enabledBorderColor: AppColors.greyCircle,
                maxLine: 10,
                textEditingController: TextEditingController()),
          ),
        ],
      ),
    );
  }
}
