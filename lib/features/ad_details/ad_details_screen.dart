import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/core/constant/general_widget/text/text16.dart';
import 'package:am_project/features/car_details/widgets/list_description.dart';
import 'package:am_project/features/car_details/widgets/svg_text_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdDetailsScreen extends StatefulWidget {
  const AdDetailsScreen({super.key});

  @override
  State<AdDetailsScreen> createState() => _AdDetailsScreenState();
}

class _AdDetailsScreenState extends State<AdDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: const CustomAppBar(title: "Ad Details"),
      body: ListView(
        padding: EdgeInsets.all(20.w),
        children: [
          const ListDescription(
              titleList: [
                "Mileage",
                "Warranty",
                "cash Price",
                "NXT Assurance",
                "EMI:"
              ],
              spaceBtween: 65,
              descriptionList: [
                "Comma",
                "Comma",
                "Comma",
                "Comma",
                "Comma Software"
              ]),
          SizedBox(
            height: kshSizeHeight12,
          ),
          const Text16(
            text: "Additional Information",
            isRegular: false,
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: kshSizeHeight24,
          ),
          ...List.generate(3, (index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.h, right: 5.w),
                      child: Container(
                        height: 2.w,
                        width: 2.w,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kbrCardBorderRadius120),
                            color: AppColors.textGrey),
                      ),
                    ),
                    SizedBox(
                      width: 313.w,
                      child: const Text12(
                        text:
                            "Free Comprehensive Warranty 10 Day Exchange no Questions asked",
                        isRegular: true,
                        color: AppColors.textGrey,
                        textAlign: TextAlign.start,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: kshSizeHeight24,
                ),
              ],
            );
          }),
          const Text16(
            text: "Follow Us on",
            isRegular: false,
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: kshSizeHeight24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SvgTextRow(
                svgPath: AppImages.instagram,
                width: 25,
                spaceBtween: 8,
                text: Text12(
                  text: "Facebook:",
                  isRegular: true,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              const Text12(
                text: "Comma Software Team",
                isRegular: false,
                isLinear: true,
              )
            ],
          ),
          SizedBox(
            height: kshSizeHeight24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SvgTextRow(
                svgPath: AppImages.instagram,
                width: 25,
                spaceBtween: 8,
                text: Text12(
                  text: "Instgram:",
                  isRegular: true,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              const Text12(
                text: "Comma Software Team",
                isRegular: false,
                isLinear: true,
              )
            ],
          ),
        ],
      ),
    );
  }
}
