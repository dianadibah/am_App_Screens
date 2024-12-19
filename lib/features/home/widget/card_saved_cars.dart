// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:am_project/core/constant/general_widget/car_details.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/config/app_images.dart';
import '../../../core/constant/design/constant.dart';

class CustomCardSavedCars extends StatelessWidget {
  final Function()? onTapShare;
  final Function()? onTapFavorite;
  final void Function()? onTap;

  const CustomCardSavedCars({
    super.key,
    this.onTapShare,
    this.onTapFavorite,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: kshSizeWidth270,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kshSizeHeight10),
            color: AppColors.white,
            boxShadow: const [BoxShadow(blurRadius: 2, color: AppColors.grey)]),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(kshSizeHeight10)),
                        image: const DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(AppImages.car))),
                    width: double.infinity,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: kshSizeHeight12,
                          horizontal: kshSizeHeight10),
                      width: kswSizeWidth80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: onTapShare,
                            child: CircleAvatar(
                              radius: kshSizeHeight12,
                              backgroundColor: AppColors.white,
                              child: Icon(
                                Icons.share_outlined,
                                color: AppColors.black,
                                size: kshSizeHeight16,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: onTapFavorite,
                            child: CircleAvatar(
                              radius: kshSizeHeight12,
                              backgroundColor: AppColors.white,
                              child: Icon(
                                Icons.favorite_outline,
                                color: AppColors.black,
                                size: kshSizeHeight16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: kshSizeHeight10, horizontal: kshSizeHeight12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text12(
                                text: "Metalic Blue BMW", isRegular: true),
                            CustomCarsDetails(
                              textAutomatic: "Auto",
                              textPetrol: "26",
                              textSpeed: "232",
                              fontSize: 10.sp,
                            )
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      const Text12(
                        text: "300/d",
                        isRegular: false,
                        isLinear: true,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
