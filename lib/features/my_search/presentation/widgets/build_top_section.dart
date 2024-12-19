import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/general_widget/sized_boxes/sw.dart';

class BuildTopSection extends StatelessWidget {
  const BuildTopSection(
      {super.key,
      required this.carName,
      required this.carNum,
      this.adsNum,
      this.isHasAds = false});

  final String carName;
  final String carNum;
  final String? adsNum;
  final bool isHasAds;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text12(
            text: carName,
            isRegular: false,
          ),
        ),
        const SW4(),
        Flexible(
          child: Text12(
            text: carNum,
            isLinear: true,
            isRegular: false,
          ),
        ),
        if (isHasAds) const SW8(),
        if (isHasAds)
          Flexible(
            child: FittedBox(
              child: Container(
                  padding: EdgeInsets.only(
                      top: 1.h, bottom: 1.h, left: 1.w, right: 1.w),
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(3.r)),
                      color: AppColors.green),
                  child: Text(
                    adsNum ?? "19 New ads",
                    style: TextStyle(
                        fontSize: 6.sp,
                        fontFamily: "Poppins",
                        color: AppColors.white,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  )),
            ),
          )
      ],
    );
  }
}
