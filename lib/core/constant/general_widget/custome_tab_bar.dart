import 'package:am_project/core/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../design/constant.dart';

class CustomsTabBar extends StatelessWidget {
  const CustomsTabBar({super.key, required this.tabs, this.function});

  final List<Tab> tabs;
  final ValueChanged<int>? function;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        dividerColor: Colors.transparent,
        indicatorColor: AppColors.redCarBold,
        indicatorWeight: BorderSide.strokeAlignCenter,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(3),
        automaticIndicatorColorAdjustment: true,
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        labelColor: AppColors.black,
        unselectedLabelColor: AppColors.grey,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(
            color: AppColors.redCarBold,
            width: 2.0,
          ),
        ),
        // physics: const BouncingScrollPhysics(),
        // isScrollable: true,
        // tabAlignment: TabAlignment.start,
        // onTap: function,
        // padding: EdgeInsets.zero,
        // dividerColor: Colors.transparent,
        // indicator: UnderlineTabIndicator(
        //   borderSide: BorderSide(width: 1.h, color: AppColors.redCarBold),
        //   borderRadius: BorderRadius.circular(kbrCardBorderRadius15),
        // ),
        // labelColor: AppColors.black,
        // labelPadding: EdgeInsetsDirectional.only(
        //     start: kshSizeHeight4, end: kshSizeHeight4),
        // // labelStyle: ,
        //
        // unselectedLabelColor: AppColors.greyText,
        tabs: tabs);
  }
}
