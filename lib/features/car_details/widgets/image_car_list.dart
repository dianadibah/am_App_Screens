import 'package:am_project/core/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCarList extends StatelessWidget {
  final int itemCount;
  final String imageUrl;
  const ImageCarList(
      {super.key, required this.itemCount, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        height: 40.h,
        width: 360.w,
        child: ListView.builder(
          itemCount: itemCount,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
              child: Material(
                elevation: 3,
                child: Container(
                  width: 60.w,
                  height: 40.h,
                  color: AppColors.white,
                  child: Image.asset(
                    imageUrl,
                    width: 40.w,
                    height: 25.h,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
