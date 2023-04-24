import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/utils/app_routs.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/texts.dart';
import '../../../../../core/widgets/custom_divider.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class AdminDetails extends StatelessWidget {
  const AdminDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Texts().subTitleText(
                text: "Welcome admin",
              ),
              const Spacer(),
              CustomTextButton(
                buttonName: "Your products",
                function: () {
                  GoRouter.of(context).push(AppRouter.adminScreen);
                },
                textcolor: Colors.blue,
              ),
              const Icon(
                Iconsax.arrow_right_41,
                color: Colors.blue,
              )
            ],
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
