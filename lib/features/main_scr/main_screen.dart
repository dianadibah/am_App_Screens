import 'package:am_project/core/config/app_colors.dart';
import 'package:am_project/features/add_ad/presentation/pages/add_ad_screen.dart';
import 'package:am_project/features/favorite/presentation/favorite_screen.dart';
import 'package:am_project/features/home/home_screen.dart';
import 'package:am_project/features/main_scr/bloc/main_screen_bloc.dart';
import 'package:am_project/features/main_scr/cutom_bottom_nav_bar.dart';
import 'package:am_project/features/message/presentation/pages/message_screen.dart';
import 'package:am_project/features/setting/presentation/pages/setting_screen.dart';
import 'package:am_project/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late MainScreenBloc _mainScreenBloc;

  @override
  void initState() {
    super.initState();
    _mainScreenBloc = serviceLocator<MainScreenBloc>()
      ..add(BottomNavBarEvent(currentIndex: 0));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.scaffoldBackgroundColor,
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 75.w),
                child: Center(
                  child: <Widget>[
                    const HomeScreen(),
                    const MessageScreen(),
                    const AddAdScreen(),
                    const FavoriteScreen(),
                    const SettingScreen()
                  ].elementAt(state.currentIndex),
                ),
              ),
              CutomBottomNavBar(
                home: () {
                  _mainScreenBloc.add(BottomNavBarEvent(currentIndex: 0));
                },
                message: () {
                  _mainScreenBloc.add(BottomNavBarEvent(currentIndex: 1));
                },
                addYourADs: () {
                  _mainScreenBloc.add(BottomNavBarEvent(currentIndex: 2));
                },
                favorite: () {
                  _mainScreenBloc.add(BottomNavBarEvent(currentIndex: 3));
                },
                settings: () {
                  _mainScreenBloc.add(BottomNavBarEvent(currentIndex: 4));
                },
                currentIndex: state.currentIndex,
              )
            ],
          ),
        );
      },
    );
  }
}
