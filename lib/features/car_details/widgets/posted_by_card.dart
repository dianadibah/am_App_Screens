import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PostedByCard extends StatelessWidget {
  final String sellerName;
  final String sellerType;
  final void Function() goToViewAllCars;
  const PostedByCard(
      {super.key,
      required this.sellerName,
      required this.sellerType,
      required this.goToViewAllCars});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(kbrCardBorderRadius12),
      elevation: 7,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kbrCardBorderRadius12),
            color: AppColors.white),
        width: 320.w,
        height: 110.h,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 100.w,
                  height: 70.h,
                  padding: EdgeInsets.all(kPaddingScreen15),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.w),
                      borderRadius:
                          BorderRadius.circular(kbrCardBorderRadius12)),
                  child: SvgPicture.asset(
                    AppImages.logoRedSvg,
                    width: 60.w,
                  ),
                ),
                SizedBox(
                  width: kswSizeWidth8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text14(
                      text: sellerName,
                      isRegular: true,
                      textAlign: TextAlign.start,
                    ),
                    Text12(
                      text: sellerType,
                      isRegular: true,
                      color: AppColors.textGrey,
                      textAlign: TextAlign.start,
                    ),
                    InkWell(
                      onTap: () => goToViewAllCars,
                      child: Text(
                        "View All Cars",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "Poppins",
                            color: AppColors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
