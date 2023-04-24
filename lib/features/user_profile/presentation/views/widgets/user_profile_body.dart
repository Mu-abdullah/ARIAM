import 'package:flutter/material.dart';
import 'admin_details.dart';
import 'order_listview.dart';
import 'user_images.dart';
import 'user_information.dart';

class UserProfileBody extends StatelessWidget {
  const UserProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              UserProfileImage(),
              UserInformation(),
              OrdersListView(),
              AdminDetails(),
            ],
          ),
        )
      ],
    );
  }
}
