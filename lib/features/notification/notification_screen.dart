import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Notification"),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 6.h),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                selectedColor: AppColors.grey,
                leading: CircleAvatar(
                  child: Image.asset(AppImages.man),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
                contentPadding: EdgeInsets.only(left: 20.w, right: 10.w),
                title: const Text14(
                  text: "4 search result for you",
                  textAlign: TextAlign.start,
                  isRegular: true,
                ),
                subtitle: Text12(
                  text: timeago.format(
                      DateTime.now().subtract(const Duration(minutes: 15))),
                  isRegular: true,
                  color: AppColors.grey,
                  textAlign: TextAlign.start,
                ),
              ),
              const Divider()
            ],
          );
        },
      ),
    );
  }
}
