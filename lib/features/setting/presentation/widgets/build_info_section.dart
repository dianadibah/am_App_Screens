import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/show_svg.dart';
import '../../../../core/constant/general_widget/text/text12.dart';
import '../../../../core/constant/general_widget/text/text16.dart';

class BuildInfoSection extends StatelessWidget {
  const BuildInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kPaddingScreen15),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: kbrCardBorderRadius50,
                  backgroundColor: AppColors.redCarBold,
                  child: Image.asset(AppImages.man),
                ),
                Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: IconButton(
                      alignment: AlignmentDirectional.bottomEnd,
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const ShowSvg(
                        AppImages.editSvg,
                      ),
                    ))
              ],
            ),
          ),
          const SW32(),
          const Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Text16(
                        text: "ahmad ahmad",
                        color: AppColors.black,
                        isRegular: false,
                      ),
                    ),
                    SW4(),
                    Flexible(
                      flex: 1,
                      child: ShowSvg(
                        AppImages.popularCheckSvg,
                      ),
                    ),
                  ],
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text12(
                    text: "ahmed email@.com",
                    isRegular: true,
                    color: AppColors.greyText,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
