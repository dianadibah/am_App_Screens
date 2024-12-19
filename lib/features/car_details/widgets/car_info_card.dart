import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:am_project/core/constant/general_widget/text/text16.dart';
import 'package:am_project/features/car_details/widgets/svg_text_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

class CarInfoCard extends StatelessWidget {
  final String description;
  final String price;
  final String year;
  final void Function() goToAllDetails;
  const CarInfoCard(
      {super.key,
      required this.description,
      required this.price,
      required this.year,
      required this.goToAllDetails});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 18.w),
          color: Colors.transparent.withOpacity(0),
          child: Material(
            elevation: 7,
            borderRadius: BorderRadius.circular(kbrCardBorderRadius12),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kbrCardBorderRadius12),
                  color: AppColors.white),
              width: 320.w,
              //height: 323.h,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 40.h, left: 20.w, right: 20.w, bottom: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgTextColumn(
                          svgPath: AppImages.zapSvg,
                          width: 25.w,
                          text: const Text12(
                            text: "232 km/h",
                            isRegular: true,
                            color: AppColors.textGrey,
                            textAlign: TextAlign.start,
                          ),
                          spaceBtween: kshSizeHeight16,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 6.w),
                          child: SvgTextColumn(
                            svgPath: AppImages.anchorSvg,
                            width: 25.w,
                            text: const Text12(
                              text: "Automatic",
                              isRegular: true,
                              color: AppColors.textGrey,
                              textAlign: TextAlign.start,
                            ),
                            spaceBtween: kshSizeHeight16,
                          ),
                        ),
                        SvgTextColumn(
                          svgPath: AppImages.topSpeedSvg,
                          width: 25.w,
                          text: const Text12(
                            text: "155 mph",
                            isRegular: true,
                            color: AppColors.textGrey,
                            textAlign: TextAlign.start,
                          ),
                          spaceBtween: kshSizeHeight16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kshSizeHeight24,
                    ),
                    const Text16(
                      text: "Description",
                      isRegular: false,
                      textAlign: TextAlign.start,
                    ),
                    ReadMoreText(
                      description,
                      trimMode: TrimMode.Length,
                      trimLength: 172,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Poppins",
                          color: AppColors.textGrey,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start,
                      trimCollapsedText: 'View More',
                      trimExpandedText: 'View Less',
                      moreStyle: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Poppins",
                          color: AppColors.redCarBold,
                          fontWeight: FontWeight.w400),
                      lessStyle: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Poppins",
                          color: AppColors.redCarBold,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: kshSizeHeight24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text14(
                          text: "\$$price/d",
                          isRegular: false,
                          textAlign: TextAlign.start,
                        ),
                        Text14(
                          text: "$year/Y",
                          isRegular: false,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kshSizeHeight24,
                    ),
                    CustomButton(
                      onPressed: goToAllDetails,
                      isFilled: true,
                      width: 320.w,
                      child: const Text14(
                        text: "View Details More",
                        isRegular: false,
                        textAlign: TextAlign.center,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: CircleAvatar(
            backgroundColor: AppColors.black,
            child: SvgPicture.asset(
              AppImages.logowhiteSvg,
              width: 25.w,
            ),
          ),
        )
      ],
    );
  }
}
