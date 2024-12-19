import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/text/Text8.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/features/car_details/widgets/svg_text_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ADCard extends StatelessWidget {
  final String imageUrl;
  final String carName;
  final String raiting;
  final String year;
  final String price;
  const ADCard(
      {super.key,
      required this.imageUrl,
      required this.carName,
      required this.raiting,
      required this.year,
      required this.price});

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
        //height: 323.h,
        child: Padding(
          padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 140.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text12(
                              text: carName,
                              isRegular: false,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(
                            height: kshSizeHeight12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColors.redCarBold,
                                    size: 12.w,
                                  ),
                                  Text12(
                                    text: raiting,
                                    isRegular: true,
                                    color: AppColors.textGrey,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Text12(
                                text: "$year/Y",
                                isRegular: true,
                                color: AppColors.textGrey,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      imageUrl,
                      width: 140.w,
                      height: 100.h,
                    )
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text12(
                      text: "\$$price/d",
                      isRegular: false,
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SvgTextRow(
                            svgPath: AppImages.zapSvg,
                            width: 10,
                            spaceBtween: 2,
                            text: Text8(
                              text: "232 km/h",
                              isRegular: true,
                              color: AppColors.textGrey,
                            )),
                        SizedBox(
                          width: 4.w,
                        ),
                        const SvgTextRow(
                            svgPath: AppImages.anchorSvg,
                            width: 10,
                            spaceBtween: 2,
                            text: Text8(
                              text: "Auto",
                              isRegular: true,
                              color: AppColors.textGrey,
                            )),
                        SizedBox(
                          width: 4.w,
                        ),
                        const SvgTextRow(
                            svgPath: AppImages.databaseSvg,
                            width: 10,
                            spaceBtween: 2,
                            text: Text8(
                              text: "26 L Patrol",
                              isRegular: true,
                              color: AppColors.textGrey,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
