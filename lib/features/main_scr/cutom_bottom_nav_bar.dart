import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/text/Text8.dart';
import 'package:am_project/core/constant/general_widget/text/text16.dart';
import 'package:am_project/features/car_details/widgets/svg_text_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function() home;
  final void Function() message;
  final void Function() addYourADs;
  final void Function() favorite;
  final void Function() settings;
  const CutomBottomNavBar(
      {super.key,
      required this.home,
      required this.message,
      required this.addYourADs,
      required this.favorite,
      required this.settings,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 95.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Material(
              elevation: 7,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                color: AppColors.white,
                height: 95.w,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: home,
                        child: SvgTextColumn(
                          svgPath: AppImages.homeSvg,
                          width: 25,
                          color: currentIndex == 0
                              ? AppColors.redCarBold
                              : AppColors.grey,
                          spaceBtween: 4,
                          text: Text8(
                            text: "Home",
                            isRegular: false,
                            color: currentIndex == 0
                                ? AppColors.redCarBold
                                : AppColors.grey,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: message,
                        child: SvgTextColumn(
                          svgPath: AppImages.messageSvg,
                          width: 25,
                          color: currentIndex == 1
                              ? AppColors.redCarBold
                              : AppColors.grey,
                          spaceBtween: 4,
                          text: Text8(
                            text: "Message",
                            isRegular: false,
                            color: currentIndex == 1
                                ? AppColors.redCarBold
                                : AppColors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60.w,
                      ),
                      InkWell(
                        onTap: favorite,
                        child: SvgTextColumn(
                          svgPath: AppImages.heartSvg,
                          width: 25,
                          color: currentIndex == 3
                              ? AppColors.redCarBold
                              : AppColors.grey,
                          spaceBtween: 5,
                          text: Text8(
                            text: "Favorites",
                            isRegular: false,
                            color: currentIndex == 3
                                ? AppColors.redCarBold
                                : AppColors.grey,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: settings,
                        child: SvgTextColumn(
                          svgPath: AppImages.settingSvg,
                          width: 25,
                          color: currentIndex == 4
                              ? AppColors.redCarBold
                              : AppColors.grey,
                          spaceBtween: 6,
                          text: Text8(
                            text: "Settings",
                            isRegular: false,
                            color: currentIndex == 4
                                ? AppColors.redCarBold
                                : AppColors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: addYourADs,
            borderRadius: BorderRadius.circular(kbrCardBorderRadius120),
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 45.w,
                    height: 45.w,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(kbrCardBorderRadius120),
                        gradient:
                            const LinearGradient(colors: AppColors.primaryRed)),
                    child: const Text16(
                      isRegular: false,
                      text: "AD",
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text8(
                    text: "Add Your ads",
                    isRegular: false,
                    color: currentIndex == 2
                        ? AppColors.redCarBold
                        : AppColors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
