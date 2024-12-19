import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:am_project/core/constant/general_widget/text/text16.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../core/constant/app_routes_path.dart';

class VerificationCodeScreen extends StatefulWidget {
  final bool isNextPageLogin;
  const VerificationCodeScreen({super.key, this.isNextPageLogin = true});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: const CustomAppBar(
        title: "",
        hasShadow: false,
        imagePath: "",
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text16(
                text: "Verification Code",
                isRegular: false,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: kshSizeHeight24,
              ),
              const Text14(
                  text:
                      "The OTP code wasv sent to your phone. please enter the code",
                  color: AppColors.textGrey,
                  isRegular: true),
              SizedBox(
                height: kshSizeHeight32,
              ),
              const Text14(
                text: "Enter Your Verification Code",
                isRegular: true,
                color: AppColors.textGrey,
              ),
              SizedBox(
                height: kshSizeHeight16,
              ),
              OtpTextField(
                numberOfFields: 6,
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                borderColor: AppColors.grey,
                disabledBorderColor: AppColors.grey,
                enabledBorderColor: AppColors.grey,
                cursorColor: AppColors.black,
                focusedBorderColor: AppColors.redCarBold,
                borderWidth: 1.w,
                fillColor: AppColors.grey,
                fieldHeight: 45.h,
                fieldWidth: 43.w,
                borderRadius: BorderRadius.circular(15.r),
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {},
                textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: kshSizeHeight24,
              ),
              CustomButton(
                  width: 320.w,
                  height: 48.h,
                  onPressed: () {
                    widget.isNextPageLogin
                        ? Navigator.of(context)
                            .pushNamed(AppRoutesPath.loginScreen)
                        : Navigator.of(context)
                            .pushNamed(AppRoutesPath.createPasswordScreen);
                  },
                  isFilled: true,
                  child: const Text16(
                    text: "Verify",
                    isRegular: true,
                    textAlign: TextAlign.center,
                    color: AppColors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
