import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/general_widget/sized_boxes/sw.dart';
import '../../../../core/constant/general_widget/text/text12.dart';

class BuildColorSelect extends StatelessWidget {
  const BuildColorSelect(
      {super.key, required this.colorHex, required this.colorName});
  final Color colorHex;
  final String colorName;
  @override
  Widget build(BuildContext context) {
    String color = "Pink";
    return RadioTheme(
      data: RadioThemeData(
        fillColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.isEmpty) {
            return AppColors.grey;
          }
          return AppColors.redCarBold;
        }),
      ),
      child: RadioMenuButton(
        value: colorName,
        groupValue: color,
        onChanged: (v) {},
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: colorHex,
              radius: 8.r,
            ),
            SW8(),
            Text12(
              text: colorName,
              isRegular: true,
            ),
          ],
        ),
      ),
    );
  }
}
