import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/features/car_details/widgets/list_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllDetailsScreen extends StatefulWidget {
  const AllDetailsScreen({super.key});

  @override
  State<AllDetailsScreen> createState() => _AllDetailsScreenState();
}

class _AllDetailsScreenState extends State<AllDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: const CustomAppBar(title: "All Details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: const ListDescription(
              titleList: [
                "Mileage",
                "Warranty",
                "cash Price",
                "NXT Assurance",
                "Mileage",
                "Warranty",
                "cash Price",
                "NXT Assurance",
                "Mileage",
                "Warranty",
                "cash Price",
                "NXT Assurance",
                "Mileage",
                "Warranty",
                "cash Price",
                "NXT Assurance",
                "Mileage",
                "Warranty",
                "cash Price",
                "NXT Assurance"
              ],
              spaceBtween: 70,
              descriptionList: [
                "Comma",
                "Comma",
                "Comma",
                "Comma",
                "Mileage",
                "Warranty",
                "cash Price",
                "NXT Assurance",
                "Mileage",
                "Warranty",
                "cash Price",
                "NXT Assurance",
                "Mileage",
                "Warranty",
                "cash Price",
                "NXT Assurance",
                "Mileage",
                "Warranty",
                "cash Price",
                "NXT Assurance"
              ]),
        ),
      ),
    );
  }
}
