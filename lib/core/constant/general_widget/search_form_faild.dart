import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_colors.dart';

class CustomSearchFormFeilad extends StatelessWidget {
  final String myHint;
  final IconData? icon;
  final String? Function(String?)? validator;
  final TextInputType? keyboard;
  final Color? fillColor;
  final Color? hintColor;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final BorderRadius? borderRadius;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool? enable;
  final int? maxLine;
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final TextEditingController? textEditingController;

  const CustomSearchFormFeilad(
      {this.borderRadius,
      this.onTap,
      this.hintColor,
      this.fillColor,
      this.maxLine,
      this.textAlign,
      super.key,
      required this.myHint,
      this.icon,
      required this.keyboard,
      required this.textEditingController,
      this.enabledBorderColor,
      this.focusedBorderColor,
      this.validator,
      this.focusNode,
      this.onChanged,
      this.enable = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TextFormField(
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        keyboardType: keyboard,
        controller: textEditingController,
        enabled: enable,
        maxLines: maxLine,
        textAlign: textAlign ?? TextAlign.start,
        cursorColor: AppColors.black,
        onTap: onTap,
        focusNode: focusNode,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor ?? AppColors.greyFormFeild,
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  color: AppColors.grey,
                )
              : null,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(5),
            borderSide: (enabledBorderColor != null)
                ? BorderSide(color: enabledBorderColor!)
                : BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(5),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: (enabledBorderColor != null)
                  ? BorderSide(color: enabledBorderColor!)
                  : BorderSide.none),
          border: OutlineInputBorder(
              borderSide: (enabledBorderColor != null)
                  ? BorderSide(color: enabledBorderColor!)
                  : BorderSide.none),
          hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: hintColor ?? AppColors.grey,
              height: 0,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400),
          hintText: myHint,
        ),
      ),
    );
  }
}
