import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/search_form_faild.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:am_project/core/general_enum/all_filter_enum.dart';
import 'package:am_project/features/filtter/presentation/utils/filter_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/config/app_colors.dart';
import '../../../../../core/constant/general_widget/build_custom_expansion.dart';
import '../../widgets/build_badge_widget.dart';
import '../../widgets/build_search_dialog.dart';

class AllFilterTabView extends StatefulWidget {
  const AllFilterTabView({super.key});

  @override
  State<AllFilterTabView> createState() => _AllFilterTabViewState();
}

class _AllFilterTabViewState extends State<AllFilterTabView> {
  final searchText = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Sh32(),
          const Text14(
            text: "Make or Model",
            textAlign: TextAlign.start,
            isRegular: false,
          ),
          const Sh12(),
          CustomSearchFormFeilad(
            myHint: "e.g “Nissan Patrol” or “ Camry”",
            keyboard: TextInputType.text,
            enabledBorderColor: AppColors.grey,
            icon: Icons.search,
            focusNode: focusNode,
            textEditingController: searchText,
            onTap: () {
              BuildSearchDialog.showDialog(
                  context: context,
                  nameController: searchText,
                  onPressed: () {},
                  then: (then) {
                    // FocusScope.of(context).unfocus();
                  });
              // FocusScope.of(context).dispose();
            },
          ),
          const Sh12(),
          const Text14(
            text: "Search for the car brands or models you are looking for",
            textAlign: TextAlign.start,
            color: AppColors.greyText,
            isRegular: true,
          ),
          const Sh12(),
          BuildBadgeWidget(
            title: 'Abarth 23',
            onCancelTap: () {},
          ),
          const Sh12(),
          ...AllFilterEnum.values.map((element) {
            return BuildCustomExpansion(
              title: element.name,
              children: FilterUtil.getChildrenOnType(element) ?? [],
            );
          }),
          const Sh12(),
          const Text14(
            text: "More Filtersl",
            isRegular: false,
            textAlign: TextAlign.start,
          ),
          const Sh12(),
          Row(
            children: [
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: kswSizeWidth8, vertical: 2.h),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.greyFilter, width: 1.sp),
                    borderRadius: BorderRadius.circular(5.r)),
                child: const Column(
                  children: [
                    Icon(Icons.refresh),
                    Text14(
                      text: "Ads with 360 view",
                      isRegular: true,
                      color: AppColors.greyFilter,
                    ),
                  ],
                ),
              ),
              const SW12(),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: kswSizeWidth8, vertical: 2.h),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.greyFilter, width: 1.sp),
                    borderRadius: BorderRadius.circular(5.r)),
                child: const Column(
                  children: [
                    Icon(Icons.abc_outlined),
                    Text14(
                      text: "Ads in English",
                      isRegular: true,
                      color: AppColors.greyFilter,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Sh32(),
        ],
      ),
    );
  }
}
