import 'package:am_project/core/constant/general_widget/custom_app_bar.dart';
import 'package:am_project/core/constant/general_widget/sized_boxes/sh.dart';
import 'package:am_project/features/message/presentation/pages/message_details_screen.dart';
import 'package:am_project/features/message/presentation/widgets/build_message_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/app_images.dart';
import '../../../../core/constant/design/constant.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Message'),
      body: Padding(
        padding: EdgeInsets.only(
            right: kswSizeWidth20, left: kswSizeWidth20, top: kshSizeHeight24),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: Sh12()),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return BuildMessageCard(
                  image: AppImages.man,
                  name: 'Naya',
                  details: 'Can you provide me with useful info........',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MessageDetailsScreen(),
                    ));
                  },
                );
              }, childCount: 3),
            ),
          ],
        ),
      ),
    );
  }
}
