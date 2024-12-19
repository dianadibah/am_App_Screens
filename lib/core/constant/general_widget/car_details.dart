import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/app_images.dart';

class CustomCarsDetails extends StatelessWidget {
  final double? iconHeight;
  final double? fontSize;
  final String textSpeed;
  final String textAutomatic;
  final String textPetrol;
  const CustomCarsDetails(
      {super.key,
      this.iconHeight,
      required this.textSpeed,
      required this.textAutomatic,
      required this.textPetrol,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              AppImages.zapSvg,
              height: iconHeight,
            ),
            Text(
              "$textSpeed km/h",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: fontSize ?? 14),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              AppImages.anchorSvg,
              height: iconHeight,
            ),
            Text(
              textAutomatic,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: fontSize ?? 14),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              AppImages.databaseSvg,
              height: iconHeight,
            ),
            Text(
              "$textPetrol L Patrol",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: fontSize ?? 14),
            ),
          ],
        )
      ],
    );
  }
}
