import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/features/message/presentation/widgets/build_message_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/search_form_faild.dart';
import '../widgets/build_message_details_card.dart';

class MessageDetailsScreen extends StatefulWidget {
  const MessageDetailsScreen({super.key});

  @override
  State<MessageDetailsScreen> createState() => _MessageDetailsScreenState();
}

class _MessageDetailsScreenState extends State<MessageDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Naya',
        subtitle: "Typing",
        imagePath: AppImages.man,
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                right: kswSizeWidth20,
                left: kswSizeWidth20,
                bottom: kshSizeHeight64,
                top: kshSizeHeight24),
            child: CustomScrollView(
              reverse: true,
              physics: const BouncingScrollPhysics(),
              slivers: [
                const SliverToBoxAdapter(child: Sh12()),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return BuildMessageDetailsCard(
                      isLeft: index.isEven,
                      message: "Can you provide me with useful....",
                    );
                  }, childCount: 3),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  bottom: kshSizeHeight24,
                  start: kswSizeWidth16,
                  end: kswSizeWidth16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomSearchFormFeilad(
                      myHint: 'Write message',
                      hintColor: AppColors.redCarBold.withOpacity(.4),
                      fillColor: AppColors.scaffoldBackgroundColor,
                      keyboard: TextInputType.text,
                      textEditingController: TextEditingController(),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        size: 18.sp,
                        color: AppColors.redCarBold,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
