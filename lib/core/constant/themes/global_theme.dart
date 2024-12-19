import 'package:am_project/core/constant/design/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_colors.dart';

class GlobalTheme {
  static ThemeData arabicTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontFamily: ""),
      bodyMedium: TextStyle(fontFamily: ""),
      bodySmall: TextStyle(fontFamily: ""),
      titleLarge: TextStyle(fontFamily: ""),
      titleMedium: TextStyle(fontFamily: ""),
      titleSmall: TextStyle(fontFamily: ""),
    ),
  );
  static ThemeData englishTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontFamily: "Poppins"),
      bodyMedium: TextStyle(fontFamily: "Poppins"),
      bodySmall: TextStyle(fontFamily: "Poppins"),
      titleLarge: TextStyle(fontFamily: "Poppins"),
      titleMedium: TextStyle(fontFamily: "Poppins"),
      titleSmall: TextStyle(fontFamily: "Poppins"),
    ),
    radioTheme: const RadioThemeData(
        fillColor: WidgetStatePropertyAll(AppColors.redCarBold)),
    appBarTheme: const AppBarTheme(
      // backgroundColor: AppColors.scaffoldBackgroundColor,
      color: AppColors.scaffoldBackgroundColor,
      // elevation: 10,
      titleTextStyle: TextStyle(
        fontFamily: "Poppins",
        color: AppColors.black,
        fontSize: 19,
        // backgroundColor: AppColors.scaffoldBackgroundColor
      ),
    ),
  );
}
