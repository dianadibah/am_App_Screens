import 'package:flutter/material.dart';

import '../../core/config/app_images.dart';
import '../../core/constant/general_widget/custom_button.dart';
import '../../core/constant/general_widget/search_form_faild.dart';

class CustomSearchAndIconHome extends StatelessWidget {
  final void Function()? onPressedIcon;
  final TextEditingController searchController;
  const CustomSearchAndIconHome(
      {super.key, this.onPressedIcon, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 7,
          child: CustomSearchFormFeilad(
              myHint: "search your car..",
              icon: Icons.search,
              keyboard: TextInputType.text,
              textEditingController: searchController),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 1,
          child: CustomButton(
              borderRadius: BorderRadius.circular(10),
              onPressed: onPressedIcon,
              isFilled: true,
              child: Image.asset(
                AppImages.filters,
                fit: BoxFit.fill,
              )),
        )
      ],
    );
  }
}
