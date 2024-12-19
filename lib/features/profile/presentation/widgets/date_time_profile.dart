import 'package:flutter/material.dart';

import '../../../../core/config/app_colors.dart';

Future<DateTime?> customDateTime(BuildContext context) {
  return showDatePicker(
      initialDate: DateTime.now(),
      currentDate: DateTime.now(),
      builder: (context, child) => Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                onSurfaceVariant: AppColors.white,
                inverseSurface: AppColors.white,
                primary: AppColors.redCarBold, // header background color
                onPrimary: AppColors.white, // header text color
              ),
              datePickerTheme: DatePickerThemeData(
                  todayBorder: BorderSide.none,
                  dividerColor: AppColors.grey,
                  cancelButtonStyle: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(AppColors.green),
                      textStyle: WidgetStatePropertyAll(
                          TextStyle(fontSize: 20, color: AppColors.white))),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  surfaceTintColor: AppColors.white,
                  yearOverlayColor:
                      const WidgetStatePropertyAll(AppColors.white),
                  yearForegroundColor:
                      const WidgetStatePropertyAll(AppColors.black),
                  rangePickerHeaderHelpStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: AppColors.white),
                  weekdayStyle: Theme.of(context).textTheme.bodyLarge,
                  headerBackgroundColor: AppColors.redCarBold,
                  headerHeadlineStyle: Theme.of(context).textTheme.bodyLarge,
                  headerHelpStyle: Theme.of(context).textTheme.bodyLarge,
                  inputDecorationTheme: InputDecorationTheme(
                    filled: true,
                    fillColor: AppColors.greyFormFeild,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    activeIndicatorBorder: BorderSide.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    outlineBorder: BorderSide.none,
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: AppColors.grey, height: 0),
                  ),
                  yearStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.black),
                  dayStyle: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: AppColors.black)),
              hoverColor: AppColors.redCarBold,
              secondaryHeaderColor: AppColors.redCarBold,
              primaryColor: AppColors.redCarBold,
              highlightColor: AppColors.redCarBold,
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.redCarBold,
                  // button text color
                ),
              ),
            ),
            child: Transform.scale(scale: 0.8, child: child!),
          ),
      context: context,
      helpText: "${DateTime.timestamp().year}",
      firstDate: DateTime(1910),
      switchToCalendarEntryModeIcon: const Icon(
        Icons.edit_calendar_outlined,
        color: AppColors.white,
      ),
      switchToInputEntryModeIcon: const Icon(
        Icons.edit_calendar_outlined,
        color: AppColors.white,
      ),
      useRootNavigator: true,
      lastDate: DateTime.now());
}
