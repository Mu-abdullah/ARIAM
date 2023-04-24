import 'package:ariam/core/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_divider.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import 'order_listview_item.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Texts().titleText(text: "Orders"),
              const Spacer(),
              CustomTextButton(
                buttonName: "Show all",
                function: () {},
                textcolor: Colors.blue,
              ),
              const Icon(
                Iconsax.arrow_right_41,
                color: Colors.blue,
              ),
            ],
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const OrderListViewItems();
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDivider(
            color: AppColors.blackColor.withOpacity(.5),
            thickness: 2,
          )
        ],
      ),
    );
  }
}
