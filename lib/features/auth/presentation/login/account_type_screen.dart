import 'dart:ui';

import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:am_project/features/auth/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constant/general_widget/text/text16.dart';

class AccountTypeScreen extends StatefulWidget {
  const AccountTypeScreen({super.key});

  @override
  State<AccountTypeScreen> createState() => _AccountTypeScreenState();
}

class _AccountTypeScreenState extends State<AccountTypeScreen> {
  late Size size;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                child: SizedBox(
                  height: kshSizeHeight200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      const Expanded(
                          flex: 1,
                          child: Text16(
                            text: "Choose the account type",
                            isRegular: true,
                          )),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomButton(
                                width: double.infinity,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ));
                                },
                                isFilled: true,
                                child: const Text14(
                                  text: "Gallery account",
                                  isRegular: true,
                                  color: AppColors.white,
                                )),
                            CustomButton(
                                width: double.infinity,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ));
                                },
                                isFilled: false,
                                child: const Text14(
                                  text: "Individual account",
                                  isRegular: true,
                                  isLinear: true,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
