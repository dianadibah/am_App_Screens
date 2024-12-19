import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/general_widget/sized_boxes/sw.dart';
import '../../../../core/constant/general_widget/text/text12.dart';

class BuildTextIconSection extends StatelessWidget {
  const BuildTextIconSection(
      {super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20.sp,
        ),
        SW4(),
        Expanded(
          child: Text12(
            text: title,
            color: AppColors.greyText,
            textAlign: TextAlign.center,
            isRegular: true,
          ),
        ),
      ],
    );
  }
}
