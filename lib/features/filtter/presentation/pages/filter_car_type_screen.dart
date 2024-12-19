import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/features/add_ad/presentation/widgets/build_bottom_navigation_add_ads.dart';
import 'package:am_project/features/filtter/presentation/pages/filter_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/search_form_faild.dart';
import '../../../../core/constant/general_widget/build_custom_line.dart';

class FilterCarTypeScreen extends StatefulWidget {
  const FilterCarTypeScreen({super.key});

  @override
  State<FilterCarTypeScreen> createState() => _FilterCarTypeScreenState();
}

class _FilterCarTypeScreenState extends State<FilterCarTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BuildBottomNavigationAddAds(
        onCallPressed: () {},
        onNextPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const FilterScreen(),
          ));
        },
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: kPaddingScreen20),
        child: Column(
          children: [
            const Sh48(),
            SizedBox(
              height: 35.h,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                      alignment: AlignmentDirectional.centerStart,
                      padding: EdgeInsetsDirectional.zero,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                      )),
                  Expanded(
                    child: CustomSearchFormFeilad(
                      textEditingController: TextEditingController(),
                      myHint: 'Abarth',
                      icon: Icons.search,
                      keyboard: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
            const Sh24(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return BuildCustomLine(
                          title: 'All in Abarth',
                          showLine: index != 9,
                          onTap: () {},
                          isActive: index == 5,
                        );
                      },
                      childCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
