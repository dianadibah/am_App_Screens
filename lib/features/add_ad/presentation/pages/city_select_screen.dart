import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/features/add_ad/presentation/pages/add_ad_screen.dart';
import 'package:am_project/features/add_ad/presentation/pages/add_ads_info_screen.dart';
import 'package:am_project/features/add_ad/presentation/widgets/build_bottom_navigation_add_ads.dart';
import 'package:am_project/features/filtter/presentation/pages/filter_car_type_screen.dart';
import 'package:flutter/material.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/search_form_faild.dart';
import '../../../../core/constant/general_widget/build_custom_line.dart';
import '../../../../core/constant/general_widget/text/text12.dart';

class CitySelectScreen extends StatefulWidget {
  const CitySelectScreen({super.key});

  @override
  State<CitySelectScreen> createState() => _CitySelectScreenState();
}

class _CitySelectScreenState extends State<CitySelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "",
        hasShadow: false,
        hasAction: false,
      ),
      bottomNavigationBar: BuildBottomNavigationAddAds(
        onCallPressed: () {},
        onNextPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const AddAdsInfoScreen(),
          ));
        },
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: kPaddingScreen20),
        child: Column(
          children: [
            const Text12(
              text: "Select a City",
              textAlign: TextAlign.center,
              isRegular: false,
            ),
            const Text12(
              text: "Where should we place your ad?",
              color: AppColors.greyText,
              textAlign: TextAlign.center,
              isRegular: true,
            ),
            const Sh32(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return BuildCustomLine(
                          title: 'Dahbi',
                          showLine: index != 9,
                          onTap: () {},
                          isActive: index == 5,
                        );
                      },
                      childCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
