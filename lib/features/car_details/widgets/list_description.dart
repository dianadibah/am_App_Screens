import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListDescription extends StatelessWidget {
  final List<String> descriptionList;
  final double spaceBtween;
  final List<String> titleList;
  const ListDescription(
      {super.key,
      required this.descriptionList,
      required this.spaceBtween,
      required this.titleList});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(titleList.length, (index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text12(
                    text: titleList[index],
                    isRegular: false,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: kshSizeHeight12,
                  ),
                ],
              );
            }),
          ],
        ),
        SizedBox(
          width: spaceBtween.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(descriptionList.length, (index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text12(
                    text: descriptionList[index],
                    isRegular: true,
                    color: AppColors.textGrey,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: kshSizeHeight12,
                  ),
                ],
              );
            }),
          ],
        ),
      ],
    );
  }
}
