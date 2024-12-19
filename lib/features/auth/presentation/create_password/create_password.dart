import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/text/text16.dart';
import 'package:am_project/features/auth/presentation/create_password/bloc/create_password_bloc.dart';
import 'package:am_project/features/auth/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/general_widget/custom_button.dart';
import '../../../../core/constant/general_widget/sized_boxes/sh.dart';
import '../../../../core/constant/general_widget/text/text14.dart';
import '../../../../core/constant/general_widget/text_form_feild.dart';
import '../../../../core/constant/global_functions.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  late TextEditingController passwordController;
  late TextEditingController confirmPassordController;
  late CreatePasswordBloc createPasswordBloc;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  void initState() {
    passwordController = TextEditingController();
    confirmPassordController = TextEditingController();
    createPasswordBloc = CreatePasswordBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => createPasswordBloc,
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "",
          hasShadow: false,
          imagePath: "",
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
                      Text16(text: "Create New Password", isRegular: false),
                      Sh8(),
                      Text14(
                        text:
                            "Your new password must be different from\n previous used password.",
                        isRegular: true,
                        color: AppColors.greyText,
                      ),
                    ],
                  ),
                ),
                BlocBuilder<CreatePasswordBloc, CreatePasswordState>(
                  builder: (context, state) {
                    return CustomTextForm(
                        validator: (value) {
                          return GlobalFunctions.validatePassword(
                              value, context);
                        },
                        onPressedIcon: () {
                          if (state.visibiltyIconPassword) {
                            createPasswordBloc.add(ChangeVisibiltyIcon(
                                visibiltyIconPassword: false,
                                visibiltyIconConfirmPassword:
                                    state.visibiltyIconConfirmPassword));
                          } else {
                            createPasswordBloc.add(ChangeVisibiltyIcon(
                                visibiltyIconPassword: true,
                                visibiltyIconConfirmPassword:
                                    state.visibiltyIconConfirmPassword));
                          }
                        },
                        obscureText: state.visibiltyIconPassword,
                        icon: !state.visibiltyIconPassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        enabledBorderColor: AppColors.redCarBold,
                        focusedBorderColor: AppColors.redCarBold,
                        myHint: "Password",
                        keyboard: TextInputType.text,
                        textEditingController: passwordController);
                  },
                ),
                const Sh10(),
                BlocBuilder<CreatePasswordBloc, CreatePasswordState>(
                  builder: (context, state) {
                    return CustomTextForm(
                        validator: (value) {
                          return GlobalFunctions.validatePassword(
                              value, context);
                        },
                        onPressedIcon: () {
                          if (state.visibiltyIconConfirmPassword) {
                            createPasswordBloc.add(ChangeVisibiltyIcon(
                                visibiltyIconConfirmPassword: false,
                                visibiltyIconPassword:
                                    state.visibiltyIconPassword));
                          } else {
                            createPasswordBloc.add(ChangeVisibiltyIcon(
                                visibiltyIconConfirmPassword: true,
                                visibiltyIconPassword:
                                    state.visibiltyIconPassword));
                          }
                        },
                        obscureText: state.visibiltyIconConfirmPassword,
                        icon: !state.visibiltyIconConfirmPassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        enabledBorderColor: AppColors.redCarBold,
                        focusedBorderColor: AppColors.redCarBold,
                        myHint: "Confirm Password",
                        keyboard: TextInputType.text,
                        textEditingController: confirmPassordController);
                  },
                ),
                const Sh40(),
                CustomButton(
                    width: double.infinity,
                    onPressed: () {
                      if (formState.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                      }
                    },
                    isFilled: true,
                    child: const Text16(
                      text: "Reset Password",
                      isRegular: true,
                      color: AppColors.white,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
