import 'package:am_project/core/config/app_font.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/general_widget/show_svg.dart';
import '../../../../core/constant/general_widget/text/text14.dart';

class BuildListTile extends StatelessWidget {
  const BuildListTile(
      {super.key,
      required this.title,
      this.icon,
      this.path,
      this.isRed,
      this.isLinear,
      this.onTap});

  final String title;
  final IconData? icon;
  final String? path;
  final bool? isRed;
  final bool? isLinear;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: icon == null
            ? ShowSvg(
                path ?? "",
              )
            : Icon(
                icon,
                color: AppColors.black,
                size: AppFont.heading_03,
              ),
        title: Text14(
          text: title,
          isLinear: isLinear ?? false,
          color:
              (isRed ?? false) ? AppColors.primaryRed.first : AppColors.black,
          textAlign: TextAlign.start,
          isRegular: true,
        ),
      ),
    );
  }
}
