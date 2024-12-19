import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/config/app_images.dart';
import 'package:am_project/core/constant/app_routes_path.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/custom_button.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';
import 'package:am_project/features/car_details/widgets/ad_card.dart';
import 'package:am_project/features/car_details/widgets/list_description.dart';
import 'package:am_project/features/car_details/widgets/car_info_card.dart';
import 'package:am_project/features/car_details/widgets/svg_text_row.dart';
import 'package:am_project/features/car_details/widgets/image_car_list.dart';
import 'package:am_project/features/car_details/widgets/posted_by_card.dart';
import 'package:am_project/features/car_details/widgets/seller_info.dart';
import 'package:am_project/features/car_recommended/widgets/comunication_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: const CustomAppBar(title: "Mersedes Bens"),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                AppImages.car,
                width: 360.w,
                height: 200.h,
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: kshSizeHeight24, horizontal: kshSizeHeight10),
                  width: kswSizeWidth80,
                  //-------------Favorite & share-----------------
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: kshSizeHeight12,
                          backgroundColor: AppColors.scaffoldBackgroundColor,
                          child: Icon(
                            Icons.share_outlined,
                            color: AppColors.black,
                            size: kshSizeHeight16,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: kshSizeHeight12,
                          backgroundColor: AppColors.scaffoldBackgroundColor,
                          child: Icon(
                            Icons.favorite_outline,
                            color: AppColors.black,
                            size: kshSizeHeight16,
                          ),
                        ),
                      )
                    ],
                  ),
                  //--------------------------------------------------
                ),
              )
            ],
          ),
          const Divider(),
          //--------------------Car images List---------------
          const ImageCarList(itemCount: 5, imageUrl: AppImages.car),
          SizedBox(
            height: kshSizeHeight32,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text14(
                  text: "Seller Info",
                  isRegular: false,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: kshSizeHeight16,
                ),
                //---------------Seller Info-------------------------
                const SellerInfo(
                    imageUrl: AppImages.man,
                    sellerName: "Ahmad Ahmad",
                    sellerNumber: "+963930467778",
                    location: "Syria, Aleppo"),
                //---------------------------------------------------
                SizedBox(
                  height: kshSizeHeight32,
                ),
                const Text14(
                  text: "Car Info",
                  isRegular: false,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: kshSizeHeight16,
                ),
                //-----------------Car Info card---------------------
                CarInfoCard(
                  description: "description",
                  price: "550",
                  year: "2020",
                  goToAllDetails: () {
                    Navigator.of(context)
                        .pushNamed(AppRoutesPath.allDetailsScreen);
                  },
                ),
                //---------------------------------------------------
                SizedBox(
                  height: kshSizeHeight32,
                ),
                const Text14(
                  text: "AD",
                  isRegular: false,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: kshSizeHeight24,
                ),
                //----------------AD----------------------------------
                const ADCard(
                    imageUrl: AppImages.car1,
                    carName: "Audi A8",
                    raiting: "4.9",
                    year: "2020",
                    price: "550"),
                SizedBox(
                  height: kshSizeHeight32,
                ),
                //-----------AD description---------------------------
                const Text14(
                  text: "Description",
                  isRegular: false,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: kshSizeHeight12,
                ),
                const ListDescription(
                    titleList: [
                      "Mileage",
                      "Warranty",
                      "cash Price",
                      "NXT Assurance"
                    ],
                    spaceBtween: 4,
                    descriptionList: ["Comma", "Comma", "Comma", "Comma"]),
                //----------------------------------------------------------
                SizedBox(
                  height: kshSizeHeight12,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutesPath.adDetailsScreen);
                    },
                    isFilled: true,
                    width: 280.w,
                    child: const Text14(
                      text: "View Details More",
                      isRegular: false,
                      textAlign: TextAlign.center,
                      color: AppColors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: kshSizeHeight32,
                ),
                const Text14(
                  text: "Location",
                  isRegular: false,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: kshSizeHeight16,
                ),
                const SvgTextRow(
                    svgPath: AppImages.anchorSvg,
                    width: 17,
                    spaceBtween: 4,
                    text: Text12(
                      isRegular: true,
                      text: "Syria, Damascus",
                      color: AppColors.textGrey,
                    )),
                SizedBox(
                  height: kshSizeHeight32,
                ),
                const Text14(
                  text: "Posted by",
                  isRegular: false,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: kshSizeHeight24,
                ),
                PostedByCard(
                    sellerName: "Kasswar",
                    sellerType: "Dealer",
                    goToViewAllCars: () {}),
                SizedBox(
                  height: kshSizeHeight24,
                ),
                const SvgTextRow(
                  svgPath: AppImages.anchorSvg,
                  width: 17,
                  text: Text14(
                    text: "Report an AD",
                    isRegular: true,
                    textAlign: TextAlign.start,
                  ),
                  spaceBtween: 4,
                  alignment: MainAxisAlignment.center,
                ),
                SizedBox(
                  height: kshSizeHeight24,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 60.h,
        width: 320.w,
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ComunicationButton(
                title: "Call",
                height: 33.h,
                width: 85.w,
                svgUrl: AppImages.callUsSvg,
                onTap: () {},
              ),
              ComunicationButton(
                title: "Chat",
                height: 33.h,
                width: 85.w,
                svgUrl: AppImages.messageSvg,
                onTap: () {},
              ),
              ComunicationButton(
                title: "Whats App",
                height: 33.h,
                width: 85.w,
                svgUrl: AppImages.messageSvg,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
