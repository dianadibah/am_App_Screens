import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_font.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/show_svg.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoResultFilter extends StatelessWidget {
  const NoResultFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShowSvg(
            AppImages.noSearchSvg,
            width: 60.sp,
            height: 60.sp,
          ),
          const Sh12(),
          const Text14(
            text: "No results found ",
            isRegular: false,
          ),
          const Sh12(),
          Text14(
            text:
                "There are no resualt available for your search criteria . Please modify your search  ",
            color: AppColors.black.withOpacity(.8),
            isRegular: true,
          ),
          // const Sh12(),
          TextButton(
              onPressed: () {},
              child: const Text14(
                text: "Clear Filters",
                isLinear: true,
                isRegular: false,
              ))
        ],
      ),
    );
  }
}
