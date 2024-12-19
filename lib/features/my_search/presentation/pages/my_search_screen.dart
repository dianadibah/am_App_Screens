import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';

import 'package:am_project/features/my_search/presentation/widgets/build_my_search_card.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/design/constant.dart';

class MySearchScreen extends StatefulWidget {
  const MySearchScreen({super.key});

  @override
  State<MySearchScreen> createState() => _MySearchScreenState();
}

class _MySearchScreenState extends State<MySearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: "My search"),
        body: Padding(
          padding: EdgeInsets.all(kPaddingScreen15),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsetsDirectional.only(top: kshSizeHeight4),
                      child: BuildMySearchCard(
                        index: index,
                      ),
                    );
                  },
                  childCount: 2,
                ),
              ),
            ],
          ),
        ));
  }
}
