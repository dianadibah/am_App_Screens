import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:am_project/features/my_ads/presentation/my_ads_screen.dart';
import 'package:am_project/features/my_search/presentation/pages/my_search_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/general_widget/custom_button.dart';
import '../../../../core/constant/general_widget/text/text14.dart';

class BuildButtonRowSection extends StatelessWidget {
  const BuildButtonRowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SW24(),
          Expanded(
            child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyAdsScreen(),
                  ));
                },
                isFilled: true,
                borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(kbrCardBorderRadius50)),
                child: const Text14(
                  text: "My Ads",
                  isRegular: true,
                  color: AppColors.white,
                )),
          ),
          const SW48(),
          Expanded(
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MySearchScreen(),
                ));
              },
              isFilled: false,
              borderRadius: BorderRadiusDirectional.all(
                  Radius.circular(kbrCardBorderRadius50)),
              child: const Text14(
                text: "My Search",
                isRegular: true,
                color: AppColors.redCarBold,
              ),
            ),
          ),
          const SW24(),
        ],
      ),
    );
  }
}
