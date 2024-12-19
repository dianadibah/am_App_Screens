import 'package:am_project/core/config/app_font.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/show_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:am_project/core/constant/general_widget/search_form_faild.dart';
import 'package:am_project/core/general_enum/all_filter_enum.dart';
import 'package:am_project/features/filtter/presentation/utils/filter_util.dart';
import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/general_widget/build_custom_expansion.dart';
import '../../../../core/constant/general_widget/custom_button.dart';
import '../../../../core/constant/general_widget/sized_boxes/sw.dart';
import '../../../../core/constant/general_widget/text/Text8.dart';
import '../../../../core/constant/general_widget/text/text12.dart';
import '../../../../core/constant/general_widget/text/text14.dart';

class PayAdsWidget extends StatefulWidget {
  const PayAdsWidget({super.key});

  @override
  State<PayAdsWidget> createState() => _PayAdsWidgetState();
}

class _PayAdsWidgetState extends State<PayAdsWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: Sh16()),
        const SliverToBoxAdapter(
          child: Text12(
            text: "Secure Checkout",
            color: AppColors.black,
            textAlign: TextAlign.center,
            isRegular: false,
          ),
        ),
        const SliverToBoxAdapter(child: Sh8()),
        const SliverToBoxAdapter(
          child: Text12(
            text: "Make your ad stand out with unique badges",
            color: AppColors.greyText,
            textAlign: TextAlign.center,
            isRegular: true,
          ),
        ),
        const SliverToBoxAdapter(child: Sh16()),
        const SliverToBoxAdapter(
          child: Text12(
            text: "Your AD",
            color: AppColors.black,
            textAlign: TextAlign.start,
            isRegular: false,
          ),
        ),
        SliverToBoxAdapter(
            child: Material(
          elevation: 2,
          color: AppColors.white,
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: kswSizeWidth16,
              end: kswSizeWidth16,
              top: kshSizeHeight24,
              bottom: kshSizeHeight24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text12(
                  text: "Metalic Blue BMW",
                  color: AppColors.black,
                  textAlign: TextAlign.start,
                  isRegular: false,
                ),
                const Sh4(),
                Row(
                  children: [
                    ShowSvg(
                      AppImages.zapSvg,
                      width: AppFont.copy,
                      height: AppFont.copy,
                    ),
                    SW4(),
                    Text8(
                      text: "232 km/h",
                      color: AppColors.greyText,
                      textAlign: TextAlign.start,
                      isRegular: false,
                    ),
                    SW12(),
                    ShowSvg(
                      AppImages.anchorSvg,
                      width: AppFont.copy,
                      height: AppFont.copy,
                    ),
                    SW4(),
                    Text8(
                      text: "Auto",
                      color: AppColors.greyText,
                      textAlign: TextAlign.start,
                      isRegular: false,
                    ),
                    SW12(),
                    ShowSvg(
                      AppImages.databaseSvg,
                      width: AppFont.copy,
                      height: AppFont.copy,
                    ),
                    SW4(),
                    Text8(
                      text: "26 L Patrol",
                      color: AppColors.greyText,
                      textAlign: TextAlign.start,
                      isRegular: false,
                    ),
                  ],
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
              ],
            ),
          ),
        )),
        const SliverToBoxAdapter(child: Sh24()),
        const SliverToBoxAdapter(
          child: Text12(
            text: "You can select multiple badges (Optional)",
            color: AppColors.greyText,
            textAlign: TextAlign.start,
            isRegular: true,
          ),
        ),
        const SliverToBoxAdapter(child: Sh8()),
        SliverToBoxAdapter(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsetsDirectional.only(
                        start: kswSizeWidth24,
                        end: kswSizeWidth24,
                        top: kshSizeHeight12,
                        bottom: kshSizeHeight12,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.greyFormFeild,
                        borderRadius:
                            BorderRadius.circular(kbrCardBorderRadius4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text12(
                            text: "Service History",
                            isRegular: true,
                          ),
                          Text12(
                            text: "+AED 30",
                            isRegular: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Sh8(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsetsDirectional.only(
                        start: kswSizeWidth24,
                        end: kswSizeWidth24,
                        top: kshSizeHeight12,
                        bottom: kshSizeHeight12,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.greyFormFeild,
                        borderRadius:
                            BorderRadius.circular(kbrCardBorderRadius4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text12(
                            text: "Service History",
                            isRegular: true,
                          ),
                          Text12(
                            text: "+AED 30",
                            isRegular: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Sh32(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsetsDirectional.only(
                        start: kswSizeWidth24,
                        end: kswSizeWidth24,
                        top: kshSizeHeight12,
                        bottom: kshSizeHeight12,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.greyFormFeild,
                        borderRadius:
                            BorderRadius.circular(kbrCardBorderRadius4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text12(
                            text: "Service History",
                            isRegular: true,
                          ),
                          Text12(
                            text: "+AED 30",
                            isRegular: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Sh8(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsetsDirectional.only(
                        start: kswSizeWidth24,
                        end: kswSizeWidth24,
                        top: kshSizeHeight12,
                        bottom: kshSizeHeight12,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.greyFormFeild,
                        borderRadius:
                            BorderRadius.circular(kbrCardBorderRadius4),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text12(
                            text: "Service History",
                            isRegular: true,
                          ),
                          Text12(
                            text: "+AED 30",
                            isRegular: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(child: Sh24()),
        const SliverToBoxAdapter(
          child: Text12(
            text: "Order Summary",
            color: AppColors.black,
            textAlign: TextAlign.start,
            isRegular: false,
          ),
        ),
        const SliverToBoxAdapter(child: Sh8()),
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.greyFormFeild,
              borderRadius: BorderRadius.circular(kbrCardBorderRadius4),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: kswSizeWidth24,
                    end: kswSizeWidth24,
                    top: kshSizeHeight12,
                    bottom: kshSizeHeight12,
                  ),
                  child: Column(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text12(
                            text: "Lite Ad Edit",
                            isRegular: true,
                          ),
                          Text12(
                            text: "AED 800",
                            isRegular: true,
                            color: AppColors.greyText,
                          ),
                        ],
                      ),
                      const Sh8(),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text12(
                            text: "VAT 5%",
                            isRegular: true,
                          ),
                          Text12(
                            text: "AED 800",
                            isRegular: true,
                            color: AppColors.greyText,
                          ),
                        ],
                      ),
                      const Sh8(),
                      SizedBox(
                        height: 30.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: SizedBox(
                                height: 30.h,
                                child: CustomSearchFormFeilad(
                                    myHint: "Discount Code",
                                    fillColor: AppColors.white,
                                    keyboard: TextInputType.text,
                                    textEditingController:
                                        TextEditingController()),
                              ),
                            ),
                            const SW12(),
                            Expanded(
                              flex: 1,
                              child: CustomButton(
                                onPressed: () {},
                                isFilled: false,
                                isBorderVisibel: false,
                                child: const Text12(
                                  text: "Apply",
                                  isRegular: false,
                                  color: AppColors.greyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: kswSizeWidth24,
                    end: kswSizeWidth24,
                    top: kshSizeHeight12,
                    bottom: kshSizeHeight12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text12(
                            text: 'Total',
                            isRegular: true,
                          ),
                          Text12(
                            text: "AED 800",
                            isRegular: true,
                            color: AppColors.greyText,
                          ),
                        ],
                      ),
                      Sh12(),
                      Container(
                        width: double.maxFinite,
                        child: CustomButton(
                          onPressed: () {},
                          isFilled: true,
                          child: const Text14(
                            text: "Pay AED 845",
                            isRegular: false,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(child: Sh32()),
      ],
    );
  }
}
