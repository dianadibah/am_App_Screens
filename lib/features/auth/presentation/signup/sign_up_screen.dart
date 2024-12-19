import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/app_routes_path.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:am_project/core/constant/general_widget/text/text16.dart';
import 'package:am_project/features/auth/presentation/login/widget/google_button.dart';
import 'package:am_project/features/auth/presentation/login/widget/or_login_text.dart';
import 'package:am_project/features/auth/presentation/signup/bloc/sign_in_bloc.dart';
import 'package:am_project/features/auth/presentation/verification/verification_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/config/app_images.dart';
import '../../../../core/constant/general_widget/text_form_feild.dart';
import '../../../../core/constant/global_functions.dart';
import '../login/widget/facebook_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPassordController;
  late TextEditingController fullnameController;
  late TextEditingController phoneNumberController;
  late SignInBloc signInBloc;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  void initState() {
    signInBloc = SignInBloc();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneNumberController = TextEditingController();
    confirmPassordController = TextEditingController();
    fullnameController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => signInBloc,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: true,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: kswSizeWidth20),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Form(
                  key: formState,
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: ScreenUtil().screenHeight + 100.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: kshSizeHeight130, bottom: 10.h),
                            child: SvgPicture.asset(
                              AppImages.logoRedSvg,
                              height: kshSizeHeight32,
                            ),
                          ),
                          Expanded(
                            flex: 14,
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
                                const Sh4(),
                                CustomTextForm(
                                    validator: (value) {
                                      return GlobalFunctions.valid(
                                          value ?? "", 3, 30, context);
                                    },
                                    enabledBorderColor: AppColors.redCarBold,
                                    focusedBorderColor: AppColors.redCarBold,
                                    myHint: "Full Name",
                                    keyboard: TextInputType.text,
                                    textEditingController: fullnameController),
                                const Sh4(),
                                BlocBuilder<SignInBloc, SignInState>(
                                  builder: (context, state) {
                                    return CustomTextForm(
                                        validator: (value) {
                                          return GlobalFunctions
                                              .validatePassword(value, context);
                                        },
                                        onPressedIcon: () {
                                          if (state.visibiltyIconPassword) {
                                            signInBloc.add(ChangeVisibiltyIcon(
                                                visibiltyIconPassword: false,
                                                visibiltyIconConfirmPassword: state
                                                    .visibiltyIconConfirmPassword));
                                          } else {
                                            signInBloc.add(ChangeVisibiltyIcon(
                                                visibiltyIconPassword: true,
                                                visibiltyIconConfirmPassword: state
                                                    .visibiltyIconConfirmPassword));
                                          }
                                        },
                                        obscureText:
                                            state.visibiltyIconPassword,
                                        icon: !state.visibiltyIconPassword
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        enabledBorderColor:
                                            AppColors.redCarBold,
                                        focusedBorderColor:
                                            AppColors.redCarBold,
                                        myHint: "Password",
                                        keyboard: TextInputType.text,
                                        textEditingController:
                                            passwordController);
                                  },
                                ),
                                const Sh4(),
                                BlocBuilder<SignInBloc, SignInState>(
                                  builder: (context, state) {
                                    return CustomTextForm(
                                        validator: (value) {
                                          return GlobalFunctions
                                              .validatePassword(value, context);
                                        },
                                        onPressedIcon: () {
                                          if (state
                                              .visibiltyIconConfirmPassword) {
                                            signInBloc.add(ChangeVisibiltyIcon(
                                                visibiltyIconConfirmPassword:
                                                    false,
                                                visibiltyIconPassword: state
                                                    .visibiltyIconPassword));
                                          } else {
                                            signInBloc.add(ChangeVisibiltyIcon(
                                                visibiltyIconConfirmPassword:
                                                    true,
                                                visibiltyIconPassword: state
                                                    .visibiltyIconPassword));
                                          }
                                        },
                                        obscureText:
                                            state.visibiltyIconConfirmPassword,
                                        icon:
                                            !state.visibiltyIconConfirmPassword
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                        enabledBorderColor:
                                            AppColors.redCarBold,
                                        focusedBorderColor:
                                            AppColors.redCarBold,
                                        myHint: "Confirm Password",
                                        keyboard: TextInputType.text,
                                        textEditingController:
                                            confirmPassordController);
                                  },
                                ),
                                const Sh4(),
                                CustomTextForm(
                                    validator: (value) {
                                      return GlobalFunctions.validPhoneNumber(
                                          value ?? "");
                                    },
                                    enabledBorderColor: AppColors.redCarBold,
                                    focusedBorderColor: AppColors.redCarBold,
                                    myHint: "Phone Number",
                                    keyboard: TextInputType.phone,
                                    textEditingController:
                                        phoneNumberController),
                                Padding(
                                  padding: EdgeInsets.only(top: 30.h),
                                  child: SizedBox(
                                    height: 250.h,
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
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    const VerificationCodeScreen(
                                                  isNextPageLogin: true,
                                                ),
                                              ));
                                            }
                                          },
                                          isFilled: true,
                                          child: const Text16(
                                            text: "Sign Up",
                                            isRegular: false,
                                            color: AppColors.white,
                                          ),
                                        ),
                                        const OrLoginText(),
                                        FacebookButton(
                                          onPressed: () {},
                                        ),
                                        GoogleButton(
                                          onPressed: () {},
                                        ),
                                        const Sh32(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text14(
                                                text:
                                                    "Already have An Account?",
                                                isRegular: true),
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text14(
                                                text: " Login",
                                                isRegular: false,
                                                isLinear: true,
                                              ),
                                            )
                                          ],
                                        ),
                                        const Sh24(),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
