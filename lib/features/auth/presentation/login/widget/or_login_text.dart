import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';

import '../../../../../core/config/app_colors.dart';

class OrLoginText extends StatelessWidget {
  const OrLoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Divider(
          color: AppColors.black, // Set the color of the divider
          thickness: 1,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
            color: AppColors.scaffoldBackgroundColor,
          ),
          child: const Text14(text: "or login with", isRegular: true),
        ),
      ],
    );
  }
}
