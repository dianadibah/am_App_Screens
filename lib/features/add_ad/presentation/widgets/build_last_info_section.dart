import 'dart:io';

import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/show_svg.dart';
import 'package:am_project/core/constant/global_functions.dart';
import 'package:am_project/features/add_ad/presentation/widgets/build_text_icon_section.dart';
import 'package:flutter/material.dart';
import 'package:am_project/core/constant/general_widget/search_form_faild.dart';
import 'package:am_project/core/general_enum/all_filter_enum.dart';
import 'package:am_project/features/filtter/presentation/utils/filter_util.dart';
import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/general_widget/build_custom_expansion.dart';
import '../../../../core/constant/general_widget/sized_boxes/sw.dart';
import '../../../../core/constant/general_widget/text/text12.dart';

class BuildLastInfoSection extends StatelessWidget {
  const BuildLastInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 2.h, horizontal: 2.w),
      child: Container(
        padding: EdgeInsetsDirectional.only(
            start: kswSizeWidth16,
            end: kswSizeWidth16,
            top: kshSizeHeight12,
            bottom: kshSizeHeight12),
        decoration: BoxDecoration(
          color: AppColors.greyFormFeild,
          borderRadius: BorderRadius.circular(kbrCardBorderRadius4),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text12(
                  text: "Model",
                  isRegular: true,
                  color: AppColors.greyText,
                ),
                Sh8(),
                Text12(
                  text: "Trim",
                  isRegular: true,
                  color: AppColors.greyText,
                ),
                Sh8(),
                Text12(
                  text: "Regional Specs",
                  isRegular: true,
                  color: AppColors.greyText,
                ),
                Sh8(),
                Text12(
                  text: "Year",
                  isRegular: true,
                  color: AppColors.greyText,
                ),
                Sh8(),
                Text12(
                  text: "Mileage",
                  isRegular: true,
                  color: AppColors.greyText,
                ),
                Sh8(),
                Text12(
                  text: "Body Type",
                  isRegular: true,
                  color: AppColors.greyText,
                ),
                Sh8(),
                Text12(
                  text: "Price",
                  isRegular: true,
                  color: AppColors.greyText,
                ),
                Sh8(),
                Text12(
                  text: "Phone number",
                  isRegular: true,
                  color: AppColors.greyText,
                ),
                Sh8(),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text12(
                  text: "Audi A1",
                  isRegular: true,
                ),
                Sh8(),
                Text12(
                  text: "Audi A1",
                  isRegular: true,
                ),
                Sh8(),
                Text12(
                  text: "Audi A1",
                  isRegular: true,
                ),
                Sh8(),
                Text12(
                  text: "Audi A1",
                  isRegular: true,
                ),
                Sh8(),
                Text12(
                  text: "Audi A1",
                  isRegular: true,
                ),
                Sh8(),
                Text12(
                  text: "Audi A1",
                  isRegular: true,
                ),
                Sh8(),
                Text12(
                  text: "Audi A1",
                  isRegular: true,
                ),
                Sh8(),
                Text12(
                  text: "Audi A1",
                  isRegular: true,
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: const ShowSvg(
                AppImages.editLinearSvg,
              ),
            )
          ],
        ),
      ),
    );
  }
}
