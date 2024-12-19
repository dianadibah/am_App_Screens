import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/features/call_us/presentation/call_us_screen.dart';
import 'package:am_project/features/profile/presentation/screen/profil_screen.dart';
import 'package:am_project/features/setting/presentation/widgets/build_list_tile.dart';
import 'package:am_project/features/setting/presentation/widgets/build_Button_row_section.dart';
import 'package:flutter/material.dart';
import '../../../../core/config/app_colors.dart';
import '../../../../core/config/app_images.dart';
import '../../../../core/constant/design/constant.dart';
import '../../../../core/constant/general_widget/custom_app_bar.dart';
import '../widgets/build_info_section.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Setting',
      ),
      body: Padding(
        padding: EdgeInsets.all(kPaddingScreen15),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: Sh16()),
            const SliverToBoxAdapter(child: BuildInfoSection()),
            const SliverToBoxAdapter(child: Sh24()),
            const SliverToBoxAdapter(child: BuildButtonRowSection()),
            const SliverToBoxAdapter(child: Sh16()),
            const SliverToBoxAdapter(
                child: Divider(
              color: AppColors.greyCircle,
            )),
            const SliverToBoxAdapter(child: Sh16()),
            SliverToBoxAdapter(
              child: BuildListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ));
                },
                title: "Profile",
                path: AppImages.userSvg,
              ),
            ),
            SliverToBoxAdapter(
              child: BuildListTile(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => const (),
                  // ));
                },
                title: "Privacy policy",
                path: AppImages.settingSvg,
              ),
            ),
            SliverToBoxAdapter(
              child: BuildListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CallUsScreen(),
                  ));
                },
                title: "Call us",
                path: AppImages.callUsSvg,
              ),
            ),
            const SliverToBoxAdapter(
              child: BuildListTile(
                title: "Logout",
                path: AppImages.logOutSvg,
                isRed: true,
                isLinear: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
