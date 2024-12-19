import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/text/Text8.dart';
import '../../../../core/constant/general_widget/text/text12.dart';

class BuildMessageCard extends StatelessWidget {
  const BuildMessageCard(
      {super.key, this.onTap, required this.name, required this.details, required this.image});
  final void Function()? onTap;
  final String image;
  final String name;
  final String details;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          top: kshSizeHeight8, bottom: kshSizeHeight8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 22.r,
              backgroundColor: AppColors.redCarBold,
              child: Image.asset(AppImages.man),
            ),
            const SW12(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text12(
                    text: name,
                    isRegular: false,
                  ),
                  const Sh4(),
                  Text8(
                    text: details,
                    isRegular: true,
                    color: AppColors.greyText,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
