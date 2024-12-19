import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/constant/general_widget/text/text14.dart';

class BuildMessageDetailsCard extends StatelessWidget {
  const BuildMessageDetailsCard(
      {super.key, required this.isLeft, required this.message});

  final bool isLeft;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: (isLeft) ? TextDirection.ltr : TextDirection.rtl,
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: kshSizeHeight12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: FittedBox(
                child: Container(
                    alignment: (isLeft)
                        ? AlignmentDirectional.topStart
                        : AlignmentDirectional.topEnd,
                    padding: EdgeInsetsDirectional.only(
                        top: kshSizeHeight4,
                        bottom: kshSizeHeight4,
                        start: kswSizeWidth12,
                        end: kswSizeWidth12),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(kbrCardBorderRadius4),
                        gradient: LinearGradient(
                            colors: (isLeft)
                                ? AppColors.greyGradiant
                                : AppColors.primaryRed)),
                    child: Text(
                      message,
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                      maxLines: 30,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "Poppins",
                          color: (isLeft) ? AppColors.black : AppColors.white,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start,
                    )),
              ),
            ),
            SW16(),
          ],
        ),
      ),
    );
  }
}
