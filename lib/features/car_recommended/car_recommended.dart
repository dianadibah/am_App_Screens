import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/features/car_recommended/widgets/car_recommended_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarRecommendedScreen extends StatefulWidget {
  const CarRecommendedScreen({super.key});

  @override
  State<CarRecommendedScreen> createState() => _CarRecommendedScreenState();
}

class _CarRecommendedScreenState extends State<CarRecommendedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "CarsRecommended For You"),
      body: ListView.separated(
        itemCount: 2,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        itemBuilder: (context, index) {
          return CarRecommendedCard(
              imageUrl: AppImages.car,
              carName: "MAZDA",
              price: "550",
              location: "Syria, Homs",
              call: () {},
              chat: () {},
              whatsApp: () {});
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 15.h,
          );
        },
      ),
    );
  }
}
