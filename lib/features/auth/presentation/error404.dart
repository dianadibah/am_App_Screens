import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:am_project/core/constant/general_widget/text/text16.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Error404 extends StatefulWidget {
  const Error404({super.key});

  @override
  State<Error404> createState() => _Error404State();
}

class _Error404State extends State<Error404> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: kshSizeHeight180,
            ),
            SizedBox(
              height: 150.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "4 4",
                    style: TextStyle(
                        fontSize: 120.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        height: 0.2.h),
                  ),
                  Image.asset(
                    AppImages.wheel,
                    height: 118.h,
                    width: 94.w,
                  ),
                ],
              ),
            ),
            const Text14(
                text: "Don’t Worry , sometime it happens even for best of us",
                isRegular: true),
            SizedBox(
              height: 45.h,
            ),
            CustomButton(
              onPressed: () {},
              isFilled: true,
              width: 300.w,
              height: 48.h,
              child: const Text16(
                isRegular: true,
                text: "Back To Home",
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
