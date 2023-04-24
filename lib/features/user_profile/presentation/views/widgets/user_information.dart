import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/texts.dart';
import '../../../../../core/widgets/custom_divider.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Texts().titleText(
            text: "UserName",
            fontSize: 50,
          ),
          Texts().subTitleText(
            text: "ٍStoreName",
            fontSize: 21,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Texts().subTitleText(
                text: "PhoneNumber",
                fontSize: 21,
              ),
              const Spacer(),
              CustomTextButton(
                function: () {},
                buttonName: "Edit",
                textcolor: Colors.blue,
              ),
              const Icon(
                Iconsax.arrow_right_41,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDivider(
            color: AppColors.blackColor.withOpacity(.5),
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Texts().subTitleText(
                text: "Adresses",
                fontSize: 21,
              ),
              const Spacer(),
              CustomTextButton(
                function: () {},
                buttonName: "Edit",
                textcolor: Colors.blue,
              ),
              const Icon(
                Iconsax.arrow_right_41,
                color: Colors.blue,
              ),
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
