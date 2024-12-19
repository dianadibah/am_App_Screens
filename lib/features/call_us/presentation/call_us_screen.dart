import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallUsScreen extends StatefulWidget {
  const CallUsScreen({super.key});

  @override
  State<CallUsScreen> createState() => _CallUsScreenState();
}

class _CallUsScreenState extends State<CallUsScreen> {
  List<String> socialMediaImages = [
    AppImages.gmailSvg,
    AppImages.gmailSvg,
    AppImages.instagram
  ];
  List<String> socialMediaContent = [
    "customeram@gmail.com",
    "am company",
    "am company"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Call Us"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kswSizeWidth20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100.h,
                ),
                SizedBox(
                  height: 80.h,
                  child: const Column(
                    children: [
                      Text14(
                          text: "Call us  to get in touch", isRegular: false),
                      Sh8(),
                      Text14(
                          text: "9:00 AM to 6:00 PM, Monday to Friday",
                          isRegular: true,
                          color: AppColors.greyText),
                    ],
                  ),
                ),
                CustomButton(
                    width: kshSizeHeight190,
                    onPressed: () {},
                    isFilled: true,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.phone_outlined,
                            color: AppColors.white,
                            size: 25.h,
                          ),
                          const Text12(
                            text: "+971 50 654 6543",
                            isRegular: false,
                            color: AppColors.white,
                          )
                        ],
                      ),
                    )),
                const Sh80(),
                ...List.generate(
                  socialMediaImages.length,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(socialMediaImages[index]),
                        const SW16(),
                        Text14(text: socialMediaContent[index], isRegular: true)
                      ],
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
