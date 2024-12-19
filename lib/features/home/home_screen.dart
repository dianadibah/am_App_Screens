import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:am_project/features/car_details/car_details_screen.dart';
import 'package:am_project/features/filtter/presentation/pages/filter_screen.dart';
import 'package:am_project/features/home/widget/card_saved_cars.dart';
import 'package:am_project/features/home/widget/card_with_content_text.dart';
import 'package:am_project/features/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'search_and_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController searchController;
  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(
            title: "",
            hasAction: true,
            leading: InkWell(
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const NotificationScreen(),
                  ));
                },
                child: SvgPicture.asset(
                  fit: BoxFit.contain,
                  AppImages.notifications,
                  height: 25.h,
                )),
            hasShadow: false,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: kswSizeWidth20, vertical: kshSizeHeight10),
                  child: const Text14(
                      text: "Let’s find Your favorite car here",
                      isRegular: false),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: kswSizeWidth20, vertical: kshSizeHeight10),
                  child: SizedBox(
                    height: 40.h,
                    child: CustomSearchAndIconHome(
                      searchController: searchController,
                      onPressedIcon: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FilterScreen(),
                        ));
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: kshSizeHeight170,
                  child: ListView.builder(
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) =>
                        CustomCardHomeWithContentText(
                      text:
                          "Take advantage of \nCompany's best offers\n and add your ad for free",
                      textButton: "Ads",
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: kswSizeWidth24, vertical: kshSizeHeight10),
                  child: const Text14(text: "Saved Cars", isRegular: false),
                ),
                SizedBox(
                  height: 210.h,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(
                        horizontal: kswSizeWidth24, vertical: kshSizeHeight10),
                    separatorBuilder: (context, index) => const SW16(),
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) => CustomCardSavedCars(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CarDetailsScreen(),
                        ));
                      },
                      onTapFavorite: () {},
                      onTapShare: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: kswSizeWidth20, vertical: kshSizeHeight10),
                  child: const Text14(
                      text: "Cars Recommended For You", isRegular: false),
                ),
                SizedBox(
                  height: kshSizeHeight200,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SW24(),
                    padding: EdgeInsets.symmetric(
                        horizontal: kswSizeWidth20, vertical: kshSizeHeight10),
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) => CustomCardSavedCars(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CarDetailsScreen(),
                        ));
                      },
                      onTapFavorite: () {},
                      onTapShare: () {},
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
