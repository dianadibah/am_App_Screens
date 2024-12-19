import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/text/Text8.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/features/car_details/widgets/svg_text_row.dart';
import 'package:am_project/features/car_recommended/widgets/comunication_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class CarRecommendedCard extends StatelessWidget {
  final String imageUrl;
  final String carName;
  final String price;
  final String location;
  final void Function() call;
  final void Function() chat;
  final void Function() whatsApp;
  const CarRecommendedCard(
      {super.key,
      required this.imageUrl,
      required this.carName,
      required this.price,
      required this.location,
      required this.call,
      required this.chat,
      required this.whatsApp});

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
        height: 290.h,
        child: Padding(
          padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imageUrl,
                width: 250.w,
                height: 150.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text12(
                            text: carName,
                            isRegular: false,
                            textAlign: TextAlign.start,
                          ),
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
                                  isRegular: false,
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
                                  isRegular: false,
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
                                  isRegular: false,
                                  color: AppColors.textGrey,
                                )),
                          ],
                        ),
                        SvgTextRow(
                            svgPath: AppImages.locationSvg,
                            width: 15,
                            spaceBtween: 4,
                            text: Text12(
                              isRegular: true,
                              text: location,
                              color: AppColors.textGrey,
                            )),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text8(
                          text:
                              DateFormat('dd MMM,yyyy').format(DateTime.now()),
                          isRegular: true,
                          color: AppColors.grey,
                        ),
                        Text12(
                          text: '\$$price/d',
                          isRegular: true,
                          isLinear: true,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: ComunicationButton(
                              height: 30,
                              width: 50,
                              svgUrl: AppImages.callUsSvg,
                              onTap: call,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: ComunicationButton(
                              height: 30,
                              width: 50,
                              svgUrl: AppImages.callUsSvg,
                              onTap: chat,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: ComunicationButton(
                            height: 30,
                            width: 50,
                            svgUrl: AppImages.callUsSvg,
                            onTap: whatsApp,
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      AppImages.logoRedSvg,
                      width: 50.w,
                      height: 23.h,
                    ),
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
