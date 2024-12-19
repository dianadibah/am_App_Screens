import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:am_project/core/constant/general_widget/text/text16.dart';
import 'package:am_project/core/constant/global_functions.dart';
import 'package:am_project/features/auth/presentation/login/widget/google_button.dart';
import 'package:am_project/features/auth/presentation/login/widget/or_login_text.dart';
import 'package:am_project/features/home/home_screen.dart';
import 'package:am_project/features/main_scr/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/config/app_images.dart';
import '../../../../core/constant/app_routes_path.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/text_form_feild.dart';
import 'widget/facebook_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: kswSizeWidth20),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: kshSizeHeight130),
                child: SvgPicture.asset(
                  AppImages.logoRedSvg,
                  height: kshSizeHeight32,
                ),
              ),
              Center(
                child: Form(
                  key: formState,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            CustomTextForm(
                                validator: (value) {
                                  return GlobalFunctions.validateEmail(
                                      value, context);
                                },
                                enabledBorderColor: AppColors.redCarBold,
                                focusedBorderColor: AppColors.redCarBold,
                                myHint: "Email",
                                keyboard: TextInputType.emailAddress,
                                textEditingController: emailController),
                            const Sh10(),
                            CustomTextForm(
                                validator: (value) {
                                  return GlobalFunctions.validatePassword(
                                      value, context);
                                },
                                enabledBorderColor: AppColors.redCarBold,
                                focusedBorderColor: AppColors.redCarBold,
                                myHint: "Password",
                                keyboard: TextInputType.text,
                                textEditingController: passwordController),
                            const Sh10(),
                            Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                      AppRoutesPath.confirmPhoneScreen);
                                },
                                child: const Text12(
                                    text: "Forget password?", isRegular: true),
                              ),
                            ),
                            const Sh24(),
                            Expanded(
                              flex: 4,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomButton(
                                      width: double.infinity,
                                      onPressed: () {
                                        if (formState.currentState!
                                            .validate()) {
                                          Navigator.of(context)
                                              .pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const MainScreen(),
                                                  ),
                                                  (route) => false);
                                        }
                                      },
                                      isFilled: true,
                                      child: const Text16(
                                        text: "Login",
                                        isRegular: false,
                                        color: AppColors.white,
                                      )),
                                  const OrLoginText(),
                                  FacebookButton(
                                    onPressed: () {},
                                  ),
                                  GoogleButton(
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text12(
                                text: "Don't have an account?",
                                isRegular: true),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(AppRoutesPath.signupScreen);
                              },
                              child: const Text12(
                                text: " Create an account",
                                isRegular: false,
                                isLinear: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
