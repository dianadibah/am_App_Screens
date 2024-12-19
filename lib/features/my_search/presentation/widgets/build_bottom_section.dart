import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../core/config/app_colors.dart';
import '../../../../core/config/app_font.dart';

class BuildBottomSection extends StatelessWidget {
  const BuildBottomSection(
      {super.key,
      required this.date,
      required this.imageCount,
      this.onTap,
      this.imageList});

  final DateTime date;
  final String imageCount;
  final void Function()? onTap;
  final Map<String, int>? imageList;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text12(
            textAlign: TextAlign.start,
            isRegular: true,
            text:
                "Saved on: ${intl.DateFormat('MMMM dd', 'en').format(date.toLocal())}",
            color: AppColors.greyText,
          ),
        ),
        Flexible(
          child: Stack(
            children: [
              Transform.translate(
                offset: Offset(-60.w, 0),
                child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: AppColors.black,
                  // child: Image.asset("name"),
                ),
              ),
              Transform.translate(
                offset: Offset(-45.w, 0),
                child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: AppColors.grey,
                  // child: Image.asset("name"),
                ),
              ),
              Transform.translate(
                offset: Offset(-30.w, 0),
                child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: AppColors.green,
                  // child: Image.asset("name"),
                ),
              ),
              Transform.translate(
                offset: Offset(-15.w, 0),
                child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: AppColors.redCarBold,
                  // child: Image.asset("name"),
                ),
              ),
              InkWell(
                onTap: onTap,
                child: CircleAvatar(
                  radius: 20.r,
                  child: Text14(
                      text: imageCount,
                      isRegular: true,
                      color: AppColors.white),
                  // child: Image.asset("name"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
