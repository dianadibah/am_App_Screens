import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';

import '../../../../../core/config/app_colors.dart';
import '../../../../../core/config/app_images.dart';
import '../../../../../core/constant/design/constant.dart';
import '../../../../../core/constant/general_widget/custom_button.dart';

class FacebookButton extends StatelessWidget {
  final void Function()? onPressed;
  const FacebookButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomButton(
          width: double.infinity,
          onPressed: onPressed,
          isFilled: true,
          isFacebookButton: true,
          child: const Text14(
            text: "Log in with Facebook",
            isRegular: true,
            color: AppColors.white,
          ),
        ),
        SizedBox(
          child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    height: kshSizeHeight40,
                    width: kswSizeWidth48,
                    AppImages.rectangle,
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    height: kshSizeHeight40,
                    AppImages.facebook,
                  ),
                ],
              )),
        )
      ],
    );
  }
}
