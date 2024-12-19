import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/features/filtter/presentation/pages/tabs/all_filter_tab_view.dart';
import 'package:am_project/features/filtter/presentation/widgets/build_bottom_navigation_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/custome_tab_bar.dart';
import '../../../../core/constant/general_widget/search_form_faild.dart';
import 'tabs/filter_and_sort_tab_view.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BuildBottomNavigationFilter(
        onApplyPressed: () {},
        onResetPressed: () {},
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: kPaddingScreen20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                      myHint: 'Audi',
                      icon: Icons.search,
                      keyboard: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
            const Sh24(),
            Expanded(
              // fit: FlexFit.loose,
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomsTabBar(
                      function: (int val) {},
                      tabs: const [
                        Tab(text: 'Filters & Sort'),
                        Tab(text: 'All Filter'),
                      ],
                    ),
                    const Expanded(
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [FilterAndSortTabView(), AllFilterTabView()],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
