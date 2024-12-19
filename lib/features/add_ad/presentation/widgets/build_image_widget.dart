import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/config/app_images.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/show_svg.dart';

class BuildImageWidget extends StatelessWidget {
  const BuildImageWidget({super.key, this.image});
  final File? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.sp,
      height: 55.sp,
      decoration: BoxDecoration(
        color: AppColors.greyFormFeild,
        borderRadius: BorderRadius.circular(kbrCardBorderRadius4),
      ),
      child: (image != null)
          ? Image.file(
              File(image?.path ?? ""),
              fit: BoxFit.contain,
            )
          : ShowSvg(
              AppImages.imageSvg,
              height: 15.sp,
              fit: BoxFit.scaleDown,
            ),
    );
  }
}
