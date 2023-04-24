import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';

class OrderListViewItems extends StatelessWidget {
  const OrderListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.secondColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(1000),
            image: const DecorationImage(
                image: AssetImage(
              AssetDate.logo,
            ))),
      ),
    );
  }
}
