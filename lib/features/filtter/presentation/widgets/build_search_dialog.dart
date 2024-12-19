import 'dart:async';

import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/general_widget/show_svg.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/features/filtter/presentation/widgets/build_badge_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/search_form_faild.dart';

class BuildSearchDialog extends StatefulWidget {
  const BuildSearchDialog({
    super.key,
    required this.nameController,
    required this.onPressed,
    this.fromEdit,
  });

  final TextEditingController nameController;
  final Function() onPressed;
  final bool? fromEdit;

  static Future showDialog({
    required BuildContext context,
    required TextEditingController nameController,
    required Function() onPressed,
    bool? fromEdit,
    required FutureOr<dynamic> Function(Object?) then,
  }) async {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (ctx, a1, a2) {
        print("uuuuuuu");
        return SizedBox();
      },
      transitionBuilder: (ctx, a1, a2, child) {
        print("uuuuuuu  kjhghjk");
        var curve = Curves.easeInOut.transform(a1.value);
        return Transform.scale(
          scale: curve,
          child: BuildSearchDialog(
            nameController: nameController,
            onPressed: onPressed,
            fromEdit: fromEdit,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    ).then(then);
  }

  @override
  State<BuildSearchDialog> createState() => _BuildSearchDialogState();
}

class _BuildSearchDialogState extends State<BuildSearchDialog> {
  List<String> l = [
    "Toyota",
    "Toyota",
    "Mercedes-Benz",
    "BMW",
    "Hyundai",
    "Toyota",
    "Toyota",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: AlertDialog(
        // insetAnimationCurve: Curves.bounceIn,
        alignment: AlignmentDirectional.center,
        // surfaceTintColor: AppColors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kbrCardBorderRadius15),
        ),
        titlePadding: EdgeInsets.zero,
        // actionsPadding: EdgeInsets.zero,
        actionsOverflowButtonSpacing: 0,
        actionsOverflowAlignment: OverflowBarAlignment.start,

        insetPadding: EdgeInsets.all(kPaddingScreen15),
        contentPadding: EdgeInsetsDirectional.all(kswSizeWidth8),
        backgroundColor: AppColors.scaffoldBackgroundColor,
        // titleTextStyle: FontTextStyle.bold(
        //     fontSize: FontSize.medium, color: ColorsApp.natural.shade50),
        title: Align(
            alignment: AlignmentDirectional.topStart,
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.close))),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchFormFeilad(
              myHint: "e.g “Nissan Patrol” or “ Camry”",
              keyboard: TextInputType.text,
              enabledBorderColor: AppColors.grey,
              icon: Icons.search,
              textEditingController: widget.nameController,
            ),
            const Sh12(),
            const Row(
              children: [
                ShowSvg(AppImages.refreshSvg),
                SW8(),
                Text12(
                  text: "Your Recent Searches",
                  textAlign: TextAlign.start,
                  isRegular: false,
                ),
              ],
            ),
            const Sh12(),
            BuildBadgeWidget(
              title: 'Toyota Camry',
              isGradient: false,
              colorBorder: AppColors.grey,
              onTap: () {},
            ),
            const Divider(),
            const Sh12(),
            const Row(
              children: [
                ShowSvg(AppImages.trendingUpSvg),
                SW8(),
                Text12(
                  isRegular: false,
                  text: "popular Makes",
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const Sh24(),
            Wrap(
                runSpacing: kshSizeHeight8,
                runAlignment: WrapAlignment.spaceAround,
                spacing: kshSizeHeight4,
                children: l.map((e) {
                  return BuildBadgeWidget(
                    title: e,
                    isGradient: false,
                    colorBorder: AppColors.grey,
                    onTap: () {},
                  );
                }).toList()),
          ],
        ),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        elevation: 5,
        // shadowColor: A.primary,
        actions: [],
      ),
    );
  }
}
