import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/text/Text8.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/features/car_details/widgets/svg_text_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SellerInfo extends StatelessWidget {
  final String imageUrl;
  final String sellerName;
  final String sellerNumber;
  final String location;
  const SellerInfo(
      {super.key,
      required this.imageUrl,
      required this.sellerName,
      required this.sellerNumber,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              child: Image.asset(imageUrl),
            ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text12(
                  text: sellerName,
                  isRegular: false,
                  textAlign: TextAlign.start,
                ),
                Text8(
                  text: sellerNumber,
                  color: AppColors.textGrey,
                  textAlign: TextAlign.start,
                  isRegular: true,
                )
              ],
            ),
          ],
        ),
        SvgTextRow(
            svgPath: AppImages.anchorSvg,
            width: 17,
            spaceBtween: 4,
            text: Text12(
              isRegular: true,
              text: location,
              color: AppColors.textGrey,
            ))
      ],
    );
  }
}
