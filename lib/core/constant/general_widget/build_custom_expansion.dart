import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/app_colors.dart';

class BuildCustomExpansion extends StatelessWidget {
  const BuildCustomExpansion(
      {super.key,
      required this.title,
      required this.children,
      this.onExpansionChanged});
  final String title;
  final List<Widget> children;
  final void Function(bool)? onExpansionChanged;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(
            vertical: kshSizeHeight8, horizontal: kswSizeWidth4),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.all(
              Radius.circular(5.r),
            ), //set border radius more than 50% of height and width to make circle
          ),
          color: AppColors.scaffoldBackgroundColor,
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.scaffoldBackgroundColor,
                borderRadius: BorderRadiusDirectional.all(
                  Radius.circular(5.r),
                ),
                boxShadow: const [
                  BoxShadow(
                      color: AppColors.greyFormFeild,
                      offset: Offset(0, -2),
                      // spreadRadius: 1,
                      blurStyle: BlurStyle.inner,
                      blurRadius: 2)
                ]),
            child: Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: Text14(
                  text: title,
                  isRegular: true,
                  textAlign: TextAlign.start,
                ),
                minTileHeight: 40.h,
                onExpansionChanged: onExpansionChanged,
                expandedAlignment: Alignment.topLeft,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
