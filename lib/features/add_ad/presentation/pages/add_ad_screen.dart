import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/app_routes_path.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/features/add_ad/presentation/pages/city_select_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/general_widget/text/text12.dart';
import '../../../../core/constant/general_widget/text/text14.dart';
import '../widgets/build_condition_widget.dart';

class AddAdScreen extends StatefulWidget {
  const AddAdScreen({super.key});

  @override
  State<AddAdScreen> createState() => _AddAdScreenState();
}

class _AddAdScreenState extends State<AddAdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Place an Ad'),
      body: Padding(
        padding: EdgeInsetsDirectional.only(
            start: kPaddingScreen20, end: kPaddingScreen20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: Sh24()),
            const SliverToBoxAdapter(
              child: Text12(
                isRegular: false,
                text: "Safety first!",
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                    top: kshSizeHeight8,
                    start: kswSizeWidth40,
                    end: kswSizeWidth40,
                    bottom: kshSizeHeight8),
                child: const Text12(
                  text:
                      "We review all ads to keep everyone on am safe and happy",
                  isRegular: true,
                  color: AppColors.greyText,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: Sh40()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                    top: kshSizeHeight8,
                    start: kswSizeWidth8,
                    end: kswSizeWidth32,
                    bottom: kshSizeHeight8),
                child: const Text12(
                  text: "Your ad will not go live if it is:",
                  color: AppColors.greyText,
                  textAlign: TextAlign.start,
                  isRegular: true,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: Sh16()),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return BuildConditionWidget(
                  index: index,
                  text:
                      "For any prohibited item or activity that violates UAE law",
                );
              }, childCount: 5),
            ),
            const SliverToBoxAdapter(child: Sh48()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(kPaddingForFullScreen),
                child: CustomButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(AppRoutesPath.selectCityScreen);
                  },
                  isFilled: true,
                  child: const Text14(
                    text: "yes, I'Agree",
                    isRegular: false,
                    color: AppColors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
