import 'dart:developer';

import 'package:am_project/features/add_ad/presentation/pages/info_widget.dart';
import 'package:am_project/features/add_ad/presentation/pages/more_info_widget.dart';
import 'package:am_project/features/add_ad/presentation/pages/pay_ads_widget.dart';
import 'package:flutter/material.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';

import '../widgets/build_bottom_navigation_add_ads.dart';

class AddAdsInfoScreen extends StatefulWidget {
  const AddAdsInfoScreen({super.key});

  @override
  State<AddAdsInfoScreen> createState() => _AddAdsInfoScreenState();
}

class _AddAdsInfoScreenState extends State<AddAdsInfoScreen> {
  int _activePage = 0;
  int pageNumber = 0;
  final List<Widget> _pages = [
    const InfoWidget(),
    const MoreInfoWidget(),
    const PayAdsWidget(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(initialPage: 0);
    // pageController.addListener((listener){
    //   return ,
    // });
    super.initState();
  }

  late PageController pageController;
  void onNextPage() {
    if (_activePage < _pages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Place an Ad'),
      bottomNavigationBar: BuildBottomNavigationAddAds(
        onCallPressed: () {},
        onNextPressed: () {
          setState(() {
            if (pageController.page == 0.0) {
              _activePage = 1;
            } else if (pageController.page == 1.0) {
              _activePage = 2;
            } else {
              _activePage = 0;
            }
          });
        },
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(
            start: kPaddingScreen20, end: kPaddingScreen20),
        child: PageView.builder(
          controller: pageController,
          itemCount: _pages.length,
          onPageChanged: (int page) {
            setState(() {
              _activePage = page;
            });
          },
          itemBuilder: (context, index) {
            return _pages[index];
          },
        ),
      ),
    );
  }
}
