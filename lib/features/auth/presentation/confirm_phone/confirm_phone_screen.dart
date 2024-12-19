import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/app_routes_path.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/custom_button.dart';
import '../../../../core/constant/general_widget/sized_boxes/sh.dart';
import '../../../../core/constant/general_widget/text/text14.dart';
import '../../../../core/constant/general_widget/text/text16.dart';
import '../../../../core/constant/general_widget/text_form_feild.dart';
import '../../../../core/constant/global_functions.dart';
import '../verification/verification_code_screen.dart';

class ConfirmPhoneScreen extends StatefulWidget {
  const ConfirmPhoneScreen({super.key});

  @override
  State<ConfirmPhoneScreen> createState() => _ConfirmPhoneScreenState();
}

class _ConfirmPhoneScreenState extends State<ConfirmPhoneScreen> {
  late TextEditingController phoneController;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  void initState() {
    phoneController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "",
        imagePath: "",
        hasShadow: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kswSizeWidth20),
        child: Form(
          key: formState,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: kshSizeHeight24, bottom: kshSizeHeight45),
                height: 100.h,
                width: double.infinity,
                child: const Column(
                  children: [
                    Text16(text: "Forget Password?", isRegular: false),
                    Sh8(),
                    Text14(
                        text:
                            "Please enter your Number to request a Password reset.",
                        isRegular: true,
                        color: AppColors.greyText),
                  ],
                ),
              ),
              CustomTextForm(
                  validator: (value) {
                    return GlobalFunctions.validPhoneNumber(value ?? "");
                  },
                  enabledBorderColor: AppColors.redCarBold,
                  focusedBorderColor: AppColors.redCarBold,
                  myHint: "Phone Number",
                  keyboard: TextInputType.phone,
                  textEditingController: phoneController),
              const Sh40(),
              CustomButton(
                  width: double.infinity,
                  onPressed: () {
                    if (formState.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const VerificationCodeScreen(
                          isNextPageLogin: false,
                        ),
                      ));
                    }
                  },
                  isFilled: true,
                  child: const Text16(
                    text: "Send",
                    isRegular: true,
                    color: AppColors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
