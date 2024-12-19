import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_colors.dart';

class CustomTextForm extends StatelessWidget {
  final String myHint;
  final IconData? icon;
  final Function()? onPressedIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboard;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final void Function(String)? onChanged;
  final TextEditingController? textEditingController;
  const CustomTextForm({
    super.key,
    required this.myHint,
    this.obscureText = false,
    this.icon,
    this.onPressedIcon,
    required this.keyboard,
    required this.textEditingController,
    this.enabledBorderColor = AppColors.redCarBold,
    this.focusedBorderColor = AppColors.redCarBold,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      keyboardType: keyboard,
      controller: textEditingController,
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: onPressedIcon,
          child: Icon(
            icon,
            color: AppColors.redCarBold,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            width: 0.5,
            color: enabledBorderColor,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            width: 0.5,
            color: enabledBorderColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            width: 0.5,
            color: focusedBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            width: 0.5,
            color: focusedBorderColor,
          ),
        ),
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColors.grey, height: 1, fontSize: 14.sp),
        hintText: myHint,
      ),
    );
  }
}
