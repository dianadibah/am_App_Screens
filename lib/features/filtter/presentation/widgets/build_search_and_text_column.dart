import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/general_widget/search_form_faild.dart';

class BuildSearchAndTextColumn extends StatelessWidget {
  const BuildSearchAndTextColumn(
      {super.key, required this.title, required this.controller});
  final String title;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text14(
          text: title,
          textAlign: TextAlign.start,
         isRegular: true,
        ),
        SizedBox(
          height: 30.h,
          child: CustomSearchFormFeilad(
            myHint: controller.text,
            textAlign: TextAlign.center,
            keyboard: TextInputType.text,
            enable: false,
            textEditingController: TextEditingController(),
          ),
        ),
      ],
    );
  }
}
