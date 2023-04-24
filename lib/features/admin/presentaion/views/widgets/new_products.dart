import 'package:ariam/core/utils/app_routs.dart';
import 'package:ariam/core/utils/colors.dart';
import 'package:ariam/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/utils/texts.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class AddNewProducts extends StatelessWidget {
  const AddNewProducts({
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
              CustomTextButton(
                function: () {
                  GoRouter.of(context).push(AppRouter.adminAddProductsScreen);
                },
                buttonName: "Add new item",
                textcolor: Colors.blue,
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Iconsax.additem,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Texts().titleText(
            text: "Your successes",
          ),
          const SizedBox(
            height: 5,
          ),
          CustomDivider(
            thickness: 1,
            color: AppColors.blackColor.withOpacity(.5),
            endIndent: 0,
            indent: 0,
          ),
        ],
      ),
    );
  }
}
