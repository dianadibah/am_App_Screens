import 'package:am_project/core/constant/app_routes_path.dart';
import 'package:am_project/features/add_ad/presentation/pages/add_ad_screen.dart';
import 'package:am_project/features/add_ad/presentation/pages/add_ads_info_screen.dart';
import 'package:am_project/features/auth/presentation/login/account_type_screen.dart';
import 'package:am_project/features/auth/presentation/login/login_screen.dart';
import 'package:am_project/features/auth/presentation/signup/sign_up_screen.dart';
import 'package:am_project/features/call_us/presentation/call_us_screen.dart';
import 'package:am_project/features/filtter/presentation/pages/filter_car_screen.dart';
import 'package:am_project/features/filtter/presentation/pages/filter_car_type_screen.dart';
import 'package:am_project/features/filtter/presentation/pages/filter_screen.dart';
import 'package:am_project/features/home/home_screen.dart';
import 'package:am_project/features/message/presentation/pages/message_details_screen.dart';
import 'package:am_project/features/message/presentation/pages/message_screen.dart';
import 'package:am_project/features/my_search/presentation/pages/my_search_screen.dart';
import 'package:am_project/features/notification/notification_screen.dart';
import 'package:am_project/features/profile/presentation/screen/profil_screen.dart';
import 'package:am_project/features/splash/splash_screen.dart';
import 'package:am_project/features/setting/presentation/pages/setting_screen.dart';
import 'package:am_project/features/main_scr/main_screen.dart';
import 'package:flutter/material.dart';

import 'features/ad_details/ad_details_screen.dart';
import 'features/add_ad/presentation/pages/city_select_screen.dart';
import 'features/auth/presentation/confirm_phone/confirm_phone_screen.dart';
import 'features/auth/presentation/create_password/create_password.dart';
import 'features/all_details/all_details_screen.dart';
import 'features/auth/presentation/error404.dart';
import 'features/auth/presentation/verification/verification_code_screen.dart';
import 'features/car_details/car_details_screen.dart';
import 'features/car_recommended/car_recommended.dart';
import 'features/favorite/presentation/favorite_screen.dart';
import 'features/my_ads/presentation/my_ads_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutesPath.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case AppRoutesPath.accountTypeScreen:
        return MaterialPageRoute(
          builder: (_) => const AccountTypeScreen(),
        );
      case AppRoutesPath.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case AppRoutesPath.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case AppRoutesPath.settingScreen:
        return MaterialPageRoute(
          builder: (_) => const SettingScreen(),
        );
      case AppRoutesPath.signupScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      case AppRoutesPath.mySearchScreen:
        return MaterialPageRoute(
          builder: (_) => const MySearchScreen(),
        );
      case AppRoutesPath.filterScreen:
        return MaterialPageRoute(
          builder: (_) => const FilterScreen(),
        );
      case AppRoutesPath.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      case AppRoutesPath.favoriteScreen:
        return MaterialPageRoute(
          builder: (_) => const FavoriteScreen(),
        );
      case AppRoutesPath.myAdsScreen:
        return MaterialPageRoute(
          builder: (_) => const MyAdsScreen(),
        );
      case AppRoutesPath.filterCarScreen:
        return MaterialPageRoute(
          builder: (_) => const FilterCarScreen(),
        );
      case AppRoutesPath.filterCarTypeScreen:
        return MaterialPageRoute(
          builder: (_) => const FilterCarTypeScreen(),
        );
      case AppRoutesPath.messageScreen:
        return MaterialPageRoute(
          builder: (_) => const MessageScreen(),
        );
      case AppRoutesPath.messageDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const MessageDetailsScreen(),
        );
      case AppRoutesPath.addAdsScreen:
        return MaterialPageRoute(
          builder: (_) => const AddAdScreen(),
        );
      case AppRoutesPath.addAdsInfoScreen:
        return MaterialPageRoute(
          builder: (_) => const AddAdsInfoScreen(),
        );
      case AppRoutesPath.selectCityScreen:
        return MaterialPageRoute(
          builder: (_) => const CitySelectScreen(),
        );
      case AppRoutesPath.callUsScreen:
        return MaterialPageRoute(
          builder: (_) => const CallUsScreen(),
        );
      case AppRoutesPath.createPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const CreatePasswordScreen(),
        );
      case AppRoutesPath.confirmPhoneScreen:
        return MaterialPageRoute(
          builder: (_) => const ConfirmPhoneScreen(),
        );
      case AppRoutesPath.verificationCodeScreen:
        return MaterialPageRoute(
          builder: (_) => const VerificationCodeScreen(),
        );
      case AppRoutesPath.carDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const CarDetailsScreen(),
        );
      case AppRoutesPath.adDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const AdDetailsScreen(),
        );
      case AppRoutesPath.notificationScreen:
        return MaterialPageRoute(
          builder: (_) => const NotificationScreen(),
        );
      case AppRoutesPath.error404Screen:
        return MaterialPageRoute(
          builder: (_) => const Error404(),
        );
      case AppRoutesPath.allDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const AllDetailsScreen(),
        );
      case AppRoutesPath.carRecommendedScreen:
        return MaterialPageRoute(
          builder: (_) => const CarRecommendedScreen(),
        );
      case AppRoutesPath.mainScreen:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );
    }
    return null;
  }
}
