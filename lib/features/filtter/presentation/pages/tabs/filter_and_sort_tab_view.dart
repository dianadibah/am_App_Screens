import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/general_enum/filter_and_sort_enum.dart';
import '../../../../../core/constant/general_widget/build_custom_expansion.dart';
import '../../utils/filter_util.dart';

class FilterAndSortTabView extends StatefulWidget {
  const FilterAndSortTabView({super.key});

  @override
  State<FilterAndSortTabView> createState() => _FilterAndSortTabViewState();
}

class _FilterAndSortTabViewState extends State<FilterAndSortTabView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Sh12(),
          ...FilterAndSortEnum.values.map((element) {
            return BuildCustomExpansion(
              title: element.name,
              children: FilterUtil.getChildrenOnType(
                      FilterUtil.getAllFilterType(element)) ??
                  [],
            );
          }),
        ],
      ),
    );
  }
}
