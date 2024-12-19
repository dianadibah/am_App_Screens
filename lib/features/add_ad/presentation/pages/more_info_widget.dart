import 'dart:io';

import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/show_svg.dart';
import 'package:am_project/core/constant/global_functions.dart';
import 'package:am_project/features/add_ad/presentation/widgets/build_last_info_section.dart';
import 'package:am_project/features/add_ad/presentation/widgets/build_text_icon_section.dart';
import 'package:flutter/material.dart';
import 'package:am_project/core/general_enum/all_filter_enum.dart';
import 'package:am_project/features/filtter/presentation/utils/filter_util.dart';
import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/general_widget/build_custom_expansion.dart';
import '../../../../core/constant/general_widget/sized_boxes/sw.dart';
import '../../../../core/constant/general_widget/text/text12.dart';
import '../widgets/build_photo_url_title_desc_section.dart';

class MoreInfoWidget extends StatefulWidget {
  const MoreInfoWidget({super.key});

  @override
  State<MoreInfoWidget> createState() => _MoreInfoWidgetState();
}

class _MoreInfoWidgetState extends State<MoreInfoWidget> {
  List<File>? images;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: Sh16()),
        const SliverToBoxAdapter(
            child: BuildTextIconSection(
          title:
              "TAdvertising multiple cars in one ad or changing your existing ad to advertise for another ad will result in rejection without a refund.",
          icon: Icons.info_outline_rounded,
        )),
        const SliverToBoxAdapter(child: Sh12()),
        const SliverToBoxAdapter(
          child: Text12(
            text: "You’re almost there!",
            color: AppColors.black,
            textAlign: TextAlign.center,
            isRegular: false,
          ),
        ),
        const SliverToBoxAdapter(child: Sh4()),
        const SliverToBoxAdapter(
          child: Text12(
            text:
                "Include as much details and pictures as possible, and set the right price",
            color: AppColors.greyText,
            textAlign: TextAlign.center,
            isRegular: true,
          ),
        ),
        const SliverToBoxAdapter(child: Sh24()),
        const SliverToBoxAdapter(
          child: BuildLastInfoSection(),
        ),
        const SliverToBoxAdapter(child: Sh12()),
        SliverToBoxAdapter(
            child: BuildPhotoUrlTitleDescSection(
          images: images,
          onPhotoTap: () async {
            images = await GlobalFunctions.chooseMultiImagePicker();
            setState(() {});
          },
        )),
        const SliverToBoxAdapter(child: Sh4()),
        SliverToBoxAdapter(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BuildCustomExpansion(
              title: AllFilterEnum.trim.name,
              children: FilterUtil.getChildrenOnType(AllFilterEnum.trim) ?? [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.fuelType.name,
              children:
                  FilterUtil.getChildrenOnType(AllFilterEnum.fuelType) ?? [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.exteriorColor.name,
              children:
                  FilterUtil.getChildrenOnType(AllFilterEnum.exteriorColor) ??
                      [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.interiorColor.name,
              children:
                  FilterUtil.getChildrenOnType(AllFilterEnum.interiorColor) ??
                      [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.warranty.name,
              children:
                  FilterUtil.getChildrenOnType(AllFilterEnum.warranty) ?? [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.doors.name,
              children: FilterUtil.getChildrenOnType(AllFilterEnum.doors) ?? [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.numberOfCylinders.name,
              children: FilterUtil.getChildrenOnType(
                      AllFilterEnum.numberOfCylinders) ??
                  [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.seats.name,
              children: FilterUtil.getChildrenOnType(AllFilterEnum.seats) ?? [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.horsePower.name,
              children:
                  FilterUtil.getChildrenOnType(AllFilterEnum.horsePower) ?? [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.engineCapacity.name,
              children:
                  FilterUtil.getChildrenOnType(AllFilterEnum.engineCapacity) ??
                      [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.steeringSide.name,
              children:
                  FilterUtil.getChildrenOnType(AllFilterEnum.steeringSide) ??
                      [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.extras.name,
              children:
                  FilterUtil.getChildrenOnType(AllFilterEnum.extras) ?? [],
              onExpansionChanged: (val) {},
            ),
            BuildCustomExpansion(
              title: AllFilterEnum.location.name,
              children:
                  FilterUtil.getChildrenOnType(AllFilterEnum.location) ?? [],
              onExpansionChanged: (val) {},
            ),
          ],
        )),
        const SliverToBoxAdapter(child: Sh16()),
        const SliverToBoxAdapter(
            child: BuildTextIconSection(
          title:
              "Make sure the car information you have entered is correct. You will only be able to make select changes once the ad is live",
          icon: Icons.info_outline_rounded,
        )),
        const SliverToBoxAdapter(child: Sh32()),
      ],
    );
  }
}
