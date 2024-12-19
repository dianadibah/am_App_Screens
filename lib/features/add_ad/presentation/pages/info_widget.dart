import 'package:am_project/core/constant/general_widget/search_form_faild.dart';
import 'package:am_project/core/general_enum/all_filter_enum.dart';
import 'package:am_project/features/filtter/presentation/utils/filter_util.dart';
import 'package:flutter/material.dart';
import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/general_widget/build_custom_expansion.dart';
import '../../../../core/constant/general_widget/text/text12.dart';

class InfoWidget extends StatefulWidget {
  const InfoWidget({super.key});

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  late TextEditingController model;
  late TextEditingController price;
  late TextEditingController year;
  late TextEditingController kilometers;
  late TextEditingController phone;
  @override
  void initState() {
    // TODO: implement initState
    model = TextEditingController();
    price = TextEditingController();
    kilometers = TextEditingController();
    year = TextEditingController();
    phone = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: Sh16()),
        const SliverToBoxAdapter(
          child: Text12(
            text: "Tell us about your car",
            color: AppColors.greyText,
            textAlign: TextAlign.center,
            isRegular: true,
          ),
        ),
        const SliverToBoxAdapter(child: Sh12()),
        SliverToBoxAdapter(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BuildCustomExpansion(
                title: "City",
                children: [],
                onExpansionChanged: (val) {},
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    vertical: kshSizeHeight8 + 2.h,
                    horizontal: kswSizeWidth4 + 2.w),
                child: CustomSearchFormFeilad(
                    myHint: "Make & Dahbi",
                    keyboard: TextInputType.text,
                    textEditingController: model),
              ),
              BuildCustomExpansion(
                title: AllFilterEnum.trim.name,
                children:
                    FilterUtil.getChildrenOnType(AllFilterEnum.trim) ?? [],
              ),
              BuildCustomExpansion(
                title: AllFilterEnum.regionalSpecs.name,
                children:
                    FilterUtil.getChildrenOnType(AllFilterEnum.regionalSpecs) ??
                        [],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    vertical: kshSizeHeight8 + 2.h,
                    horizontal: kswSizeWidth4 + 2.w),
                child: CustomSearchFormFeilad(
                    myHint: "Year",
                    keyboard: TextInputType.text,
                    textEditingController: year),
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    vertical: kshSizeHeight8 + 2.h,
                    horizontal: kswSizeWidth4 + 2.w),
                child: CustomSearchFormFeilad(
                    myHint: "kilometres",
                    keyboard: TextInputType.text,
                    textEditingController: kilometers),
              ),
              BuildCustomExpansion(
                title: AllFilterEnum.bodyType.name,
                children:
                    FilterUtil.getChildrenOnType(AllFilterEnum.bodyType) ?? [],
              ),
              BuildCustomExpansion(
                title: "Is your car insured in UAE",
                children:
                    FilterUtil.getChildrenOnType(AllFilterEnum.bodyType) ?? [],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    vertical: kshSizeHeight8 + 2.h,
                    horizontal: kswSizeWidth4 + 2.w),
                child: CustomSearchFormFeilad(
                    myHint: "Price",
                    keyboard: TextInputType.text,
                    textEditingController: price),
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    vertical: kshSizeHeight8 + 2.h,
                    horizontal: kswSizeWidth4 + 2.w),
                child: CustomSearchFormFeilad(
                    myHint: "phoneNumber",
                    keyboard: TextInputType.text,
                    textEditingController: phone),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(child: Sh64()),
      ],
    );
  }
}
