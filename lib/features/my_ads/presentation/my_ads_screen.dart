import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../core/constant/design/constant.dart';
import '../../../core/constant/general_widget/card_favorite.dart';

class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({super.key});

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: const CustomAppBar(title: "My Ads"),
        body: Column(
          children: [
            const Expanded(
              flex: 1,
              child: TabBar(
                dividerColor: Colors.transparent,
                indicatorColor: AppColors.redCarBold,
                indicatorWeight: BorderSide.strokeAlignCenter,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.all(3),
                automaticIndicatorColorAdjustment: true,
                overlayColor: WidgetStatePropertyAll(Colors.transparent),
                labelColor: AppColors.black,
                unselectedLabelColor: AppColors.grey,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: AppColors.redCarBold,
                    width: 2.0,
                  ),
                ),
                tabs: [
                  Center(child: Text("Published")),
                  Center(child: Text("Rejected")),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: TabBarView(children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: kswSizeWidth20, left: kswSizeWidth20, top: 1),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const Sh4(),
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(top: kshSizeHeight12),
                      child: CustomCardFavorite(
                        isfavorite: false,
                        onTapIcon: () {},
                      ),
                    ),
                    itemCount: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: kswSizeWidth20, left: kswSizeWidth20, top: 1),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const Sh4(),
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(top: kshSizeHeight12),
                      child: CustomCardFavorite(
                        isfavorite: false,
                        onTapIcon: () {},
                      ),
                    ),
                    itemCount: 2,
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
