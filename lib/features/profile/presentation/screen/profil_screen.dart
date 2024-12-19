import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/search_form_faild.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sw.dart';
import 'package:am_project/core/constant/general_widget/text/text12.dart';
import 'package:am_project/core/constant/general_widget/text/text14.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_picker/country_picker.dart';

import '../widgets/date_time_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController phoneController;
  late TextEditingController time;
  late ScreenUtil screenUtil;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneController = TextEditingController();
    time = TextEditingController();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    screenUtil = ScreenUtil();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: const CustomAppBar(title: "Pofile"),
      body: SizedBox(
        height: screenUtil.screenHeight,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: kshSizeHeight10, horizontal: kswSizeWidth24),
            child: SizedBox(
              height: screenUtil.screenHeight / 1.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text14(text: "Profile Name", isRegular: false),
                      Text12(
                          text: "this is displayed on your profile",
                          isRegular: true)
                    ],
                  ),
                  const Text12(text: "First Name", isRegular: false),
                  CustomSearchFormFeilad(
                      myHint: "Enter First Name",
                      keyboard: TextInputType.name,
                      textEditingController: firstNameController),
                  const Text12(text: "Last Name", isRegular: false),
                  CustomSearchFormFeilad(
                      myHint: "Enter Last Name",
                      keyboard: TextInputType.name,
                      textEditingController: lastNameController),
                  const Text12(text: "Phone Number", isRegular: false),
                  CustomSearchFormFeilad(
                      myHint: "Enter Phone Number",
                      keyboard: TextInputType.phone,
                      textEditingController: phoneController),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text14(text: "Account Details", isRegular: false),
                      Text12(
                          text: "This is not visible to other user",
                          isRegular: true)
                    ],
                  ),
                  const Text12(text: "Date of Birth", isRegular: false),
                  CustomSearchFormFeilad(
                      onTap: () {
                        customDateTime(context);
                      },
                      enable: false,
                      myHint: "DD/MM/YYYY",
                      keyboard: TextInputType.datetime,
                      textEditingController: time),
                  const Text12(text: "Nationality", isRegular: false),
                  CustomSearchFormFeilad(
                      onTap: () {
                        showCountryPicker(
                          customFlagBuilder: (country) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 20,
                                width: 22,
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Checkbox(
                                  fillColor: const WidgetStatePropertyAll(
                                      AppColors.white),
                                  activeColor: AppColors.redCarBold,
                                  checkColor: AppColors.redCarBold,
                                  value: true,
                                  onChanged: (value) {},
                                ),
                              ),
                              const SW4(),
                              Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child: Container(
                                  alignment: Alignment.center,
                                  clipBehavior: Clip.hardEdge,
                                  height: 20,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    clipBehavior: Clip.hardEdge,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          alignment: Alignment.center,
                                          clipBehavior: Clip.hardEdge,
                                          height: 20,
                                          width: 22,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.fill,
                                        child: Text(
                                          country.flagEmoji,
                                          textAlign: TextAlign.start,
                                          strutStyle:
                                              const StrutStyle(height: 1),
                                          textHeightBehavior:
                                              const TextHeightBehavior(),
                                          style: const TextStyle(
                                              fontSize: 22, height: 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          countryListTheme: CountryListThemeData(
                              flagSize: 25,
                              inputDecoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.greyFormFeild,
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: AppColors.grey,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 5),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: AppColors.grey, height: 0),
                                hintText: "search",
                              ),
                              backgroundColor: Colors.white,
                              textStyle: const TextStyle(
                                  fontSize: 16, color: Colors.blueGrey),
                              bottomSheetHeight:
                                  500, // Optional. Country list modal height
                              //Optional. Sets the border radius for the bottomsheet.
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              )),
                          context: context,
                          onSelect: (value) {},
                        );
                      },
                      enable: false,
                      myHint: "Search Country",
                      keyboard: TextInputType.name,
                      textEditingController: phoneController),
                  const Text12(text: "Gender", isRegular: false),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio(
                                  value: "Male",
                                  groupValue: "Male",
                                  onChanged: (val) {},
                                ),
                                const Text12(text: "Male", isRegular: true)
                              ],
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Radio(
                                  activeColor: AppColors.redCarBold,
                                  value: "Female",
                                  groupValue: "Female",
                                  onChanged: (val) {},
                                ),
                                const Text12(text: "Female", isRegular: true)
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: "Prefer not to say",
                            groupValue: "Prefer not to say",
                            onChanged: (val) {},
                          ),
                          const Text12(
                              text: "Prefer not to say", isRegular: true)
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
