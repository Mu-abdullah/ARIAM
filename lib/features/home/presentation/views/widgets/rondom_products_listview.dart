import 'package:flutter/material.dart';
import '../../../../../core/utils/size.dart';
import 'random_items.dart';

class RondomProductsListView extends StatelessWidget {
  const RondomProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CustomSize().heightSize(context, .6),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const RondomProductsListViewItem();
        },
      ),
    );
  }
}
