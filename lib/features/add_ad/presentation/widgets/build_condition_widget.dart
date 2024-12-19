import 'package:am_project/core/constant/design/constant.dart';
import 'package:flutter/material.dart';
import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/general_widget/text/text12.dart';

class BuildConditionWidget extends StatelessWidget {
  const BuildConditionWidget(
      {super.key, required this.index, required this.text});
  final int index;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: kshSizeHeight8),
      child: Text12(
        text: '${index + 1}. $text',
        isRegular: true,
        color: AppColors.black,
        textAlign: TextAlign.start,
      ),
    );
  }
}
