import 'dart:ui';

import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:am_project/core/general_enum/all_filter_enum.dart';
import 'package:am_project/core/general_enum/filter_and_sort_enum.dart';
import 'package:am_project/features/filtter/presentation/widgets/build_range_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/build_custom_line.dart';
import '../../../../core/constant/general_widget/search_form_faild.dart';
import '../../../../core/constant/general_widget/sized_boxes/sh.dart';
import '../widgets/build_bottom_expansion.dart';
import '../widgets/build_color_select.dart';
import '../widgets/build_search_and_text_column.dart';

class FilterUtil {
  static List<Widget>? getChildrenOnType(AllFilterEnum element) {
    switch (element) {
      case AllFilterEnum.year:
        return [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: kswSizeWidth24, end: kswSizeWidth24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: BuildSearchAndTextColumn(
                    title: 'From',
                    controller: TextEditingController(text: "199"),
                  ),
                ),
                const Expanded(flex: 1, child: SW48()),
                Expanded(
                  flex: 1,
                  child: BuildSearchAndTextColumn(
                    title: 'To',
                    controller: TextEditingController(text: "199"),
                  ),
                ),
              ],
            ),
          ),
          const BuildRangeSlider(),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.trim:
        return [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: kswSizeWidth24, end: kswSizeWidth24),
            child: CustomSearchFormFeilad(
              myHint: "Search",
              keyboard: TextInputType.text,
              enabledBorderColor: AppColors.greyFormFeild,
              icon: Icons.search,
              textEditingController: TextEditingController(),
            ),
          ),
          const Sh12(),
          const BuildCustomLine(title: "Dealer"),
          const BuildCustomLine(
            title: "Owner",
            showLine: false,
          ),
          const Sh12(),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];

      case AllFilterEnum.regionalSpecs:
        return [
          const BuildCustomLine(title: "Gcc Spacs"),
          const BuildCustomLine(title: "American Specs"),
          const BuildCustomLine(title: "Canadian Specs"),
          const BuildCustomLine(title: "Japanese Specs"),
          const BuildCustomLine(title: "JEuropean Specs"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.sellerType:
        return [
          const BuildCustomLine(title: "Dealer"),
          const BuildCustomLine(
            title: "Owner",
          ),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.price:
        return [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: kswSizeWidth24, end: kswSizeWidth24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: BuildSearchAndTextColumn(
                    title: 'From',
                    controller: TextEditingController(text: "\$199"),
                  ),
                ),
                const Expanded(flex: 1, child: SW48()),
                Expanded(
                  flex: 1,
                  child: BuildSearchAndTextColumn(
                    title: 'To',
                    controller: TextEditingController(text: "\$199"),
                  ),
                ),
              ],
            ),
          ),
          const BuildRangeSlider(),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.kilometers:
        return [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: kswSizeWidth24, end: kswSizeWidth24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: BuildSearchAndTextColumn(
                    title: 'From',
                    controller: TextEditingController(text: "199 km"),
                  ),
                ),
                const Expanded(flex: 1, child: SW48()),
                Expanded(
                  flex: 1,
                  child: BuildSearchAndTextColumn(
                    title: 'To',
                    controller: TextEditingController(text: "199 km"),
                  ),
                ),
              ],
            ),
          ),
          const BuildRangeSlider(),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.bodyType:
        return [
          const BuildCustomLine(title: "Gcc Spacs"),
          const BuildCustomLine(title: "American Specs"),
          const BuildCustomLine(title: "Canadian Specs"),
          const BuildCustomLine(title: "Japanese Specs"),
          const BuildCustomLine(title: "JEuropean Specs"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.seats:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(title: "Canadian Specs"),
          const BuildCustomLine(title: "Japanese Specs"),
          const BuildCustomLine(title: "JEuropean Specs"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.fuelType:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.transmissionType:
        return [
          const BuildCustomLine(title: "Manual"),
          const BuildCustomLine(
            title: "Autamtic",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.numberOfCylinders:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.exteriorColor:
        Map<String, Color> colors = {
          "Black": AppColors.black,
          "Pink": Colors.pink,
          "Red": AppColors.redCarBold,
          "Blue": Colors.blue,
          "Yellow": Colors.yellow,
          "Grey": AppColors.grey,
        };
        return [
          Wrap(
            runAlignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            runSpacing: kshSizeHeight4,
            children: [
              ...colors.entries.map((e) {
                return SizedBox(
                  width: 150.w,
                  child: BuildColorSelect(
                    colorHex: e.value,
                    colorName: e.key,
                  ),
                );
              }),
            ],
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.interiorColor:
        Map<String, Color> colors = {
          "Black": AppColors.black,
          "Pink": Colors.pink,
          "Red": AppColors.redCarBold,
          "Blue": Colors.blue,
          "Yellow": Colors.yellow,
          "Grey": AppColors.grey,
        };
        return [
          Wrap(
            runAlignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            runSpacing: kshSizeHeight4,
            children: [
              ...colors.entries.map((e) {
                return SizedBox(
                  width: 150.w,
                  child: BuildColorSelect(
                    colorHex: e.value,
                    colorName: e.key,
                  ),
                );
              }),
            ],
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.doors:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.keywords:
        return [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: kswSizeWidth24, end: kswSizeWidth24),
            child: CustomSearchFormFeilad(
              myHint: "Search",
              keyboard: TextInputType.text,
              enabledBorderColor: AppColors.greyFormFeild,
              icon: Icons.search,
              textEditingController: TextEditingController(),
            ),
          ),
          const Sh12(),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.dealerName:
        return [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: kswSizeWidth24, end: kswSizeWidth24),
            child: CustomSearchFormFeilad(
              myHint: "Search",
              keyboard: TextInputType.text,
              enabledBorderColor: AppColors.greyFormFeild,
              icon: Icons.search,
              textEditingController: TextEditingController(),
            ),
          ),
          const Sh12(),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.warranty:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.horsePower:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.engineCapacity:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.technicalFeature:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.exportStatus:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.steeringSide:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.extras:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.badges:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.adsPosts:
        return [
          const BuildCustomLine(title: "1"),
          const BuildCustomLine(title: "A1"),
          const BuildCustomLine(
            title: "Other",
            showLine: false,
          ),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      case AllFilterEnum.location:
        return [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: kswSizeWidth24, end: kswSizeWidth24),
            child: CustomSearchFormFeilad(
              myHint: "e.g. Dubai Marina",
              keyboard: TextInputType.text,
              enabledBorderColor: AppColors.greyFormFeild,
              icon: Icons.search,
              textEditingController: TextEditingController(),
            ),
          ),
          const Sh12(),
          BuildBottomExpansion(
            titleSearch: "24 Results",
            onResetTap: () {},
          )
        ];
      default:
        return [];
    }
  }

  static AllFilterEnum getAllFilterType(FilterAndSortEnum type) {
    switch (type) {
      case FilterAndSortEnum.year:
        return AllFilterEnum.year;
      case FilterAndSortEnum.trim:
        return AllFilterEnum.trim;
      case FilterAndSortEnum.regionalSpecs:
        return AllFilterEnum.regionalSpecs;
      case FilterAndSortEnum.sellerType:
        return AllFilterEnum.sellerType;
      case FilterAndSortEnum.price:
        return AllFilterEnum.price;
      case FilterAndSortEnum.kilometers:
        return AllFilterEnum.kilometers;
      default:
        return AllFilterEnum.year;
    }
  }
}
