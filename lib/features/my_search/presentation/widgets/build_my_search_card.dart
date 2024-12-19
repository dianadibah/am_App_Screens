import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/config/app_images.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/show_svg.dart';
import '../../../../core/constant/general_widget/sized_boxes/sh.dart';
import '../../../../core/constant/general_widget/sized_boxes/sw.dart';
import '../../../../core/constant/general_widget/text/text12.dart';
import 'build_bottom_section.dart';
import 'build_top_section.dart';

class BuildMySearchCard extends StatelessWidget {
  const BuildMySearchCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.scaffoldBackgroundColor,
          borderRadius: BorderRadiusDirectional.all(
            Radius.circular(5.r),
          ),
          boxShadow: [
            BoxShadow(
                color: AppColors.black.withOpacity(.2),
                offset: const Offset(0, 2),
                blurRadius: 2)
          ]),
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            start: kshSizeHeight12,
            end: kshSizeHeight12,
            top: kshSizeHeight8,
            bottom: kshSizeHeight8),
        child: Column(
          children: [
            Align(
                alignment: AlignmentDirectional.topEnd,
                child: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const ShowSvg(AppImages.deleteSvg)),
                )),
            BuildTopSection(
              carName: "New car ",
              carNum: "(20)",
              adsNum: "19 New ads",
              isHasAds: index == 1 ? true : false,
            ),
            const Sh4(),
            Row(
              children: [
                Flexible(
                  child: ShowSvg(
                    AppImages.locationSvg,
                    width: 15.sp,
                    height: 15.sp,
                  ),
                ),
                const SW8(),
                const Flexible(
                  child: Text12(
                    text: "Syria, Damascus",
                    color: AppColors.greyText,
                    isRegular: true,
                  ),
                ),
              ],
            ),
            const Sh12(),
            BuildBottomSection(
              date: DateTime.now(),
              imageCount: '+20',
              imageList: const {
                "assets/images/car.png ": 0,
                "assets/images/car1.png ": 15,
                "assets/images/man.png ": 30,
                "assets/images/photo.png ": 45,
                "assets/images/filter.png ": 60,
              },
            )
          ],
        ),
      ),
    );
  }
}
