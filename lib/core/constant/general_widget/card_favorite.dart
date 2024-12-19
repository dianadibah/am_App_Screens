import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/car_details.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_images.dart';

class CustomCardFavorite extends StatelessWidget {
  final bool isfavorite;
  final void Function()? onTapIcon;
  const CustomCardFavorite(
      {super.key, required this.isfavorite, this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kshSizeHeight115,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  blurRadius: 0.5,
                  spreadRadius: 0.1,
                  color: AppColors.grey,
                  offset: Offset(0, 0.1))
            ]),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Image.asset(
                AppImages.car,
                fit: BoxFit.contain,
                width: 140.w,
                height: 170.h,
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: InkWell(
                onTap: onTapIcon,
                child: Padding(
                  padding: EdgeInsets.all(kshSizeHeight10),
                  child: CircleAvatar(
                    radius: kshSizeHeight12,
                    backgroundColor: AppColors.white,
                    child: isfavorite
                        ? const Icon(
                            Icons.favorite_border,
                            size: 20,
                          )
                        : Image.asset(AppImages.delete),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kswSizeWidth12),
              height: kshSizeHeight64,
              child: const Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text14(
                          text: "Metalic Blue BMW",
                          isRegular: false,
                        ),
                        CustomCarsDetails(
                          textSpeed: "232",
                          textAutomatic: "Auto",
                          textPetrol: "25",
                          fontSize: 9,
                        ),
                        Sh4(),
                        Text14(
                          isRegular: true,
                          text: "Syria, Damascus",
                          color: AppColors.grey,
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
