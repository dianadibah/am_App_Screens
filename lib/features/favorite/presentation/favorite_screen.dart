import 'package:am_project/core/constant/design/constant.dart';
import 'package:am_project/core/constant/general_widget/card_favorite.dart';
import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Favorite"),
      body: Padding(
        padding: EdgeInsets.only(
            right: kswSizeWidth20, left: kswSizeWidth20, top: kshSizeHeight24),
        child: ListView.separated(
          separatorBuilder: (context, index) => const Sh16(),
          itemBuilder: (context, index) => CustomCardFavorite(
            isfavorite: true,
            onTapIcon: () {},
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
