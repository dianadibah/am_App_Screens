import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/design/constant.dart';
import '../../../../../core/constant/general_widget/text/text14.dart';

class GoogleButton extends StatelessWidget {
  final void Function()? onPressed;
  const GoogleButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomButton(
          width: double.infinity,
          onPressed: onPressed,
          isFilled: false,
          child: const Text14(
            text: "Log in with Google",
            isRegular: true,
            isLinear: true,
          ),
        ),
        Row(
          children: [
            Image.asset(
              height: kshSizeHeight40,
              width: kswSizeWidth40,
              AppImages.google,
            ),
            const VerticalDivider(
              thickness: 1,
              color: AppColors.redCarBold,
            )
          ],
        )
      ],
    );
  }
}
