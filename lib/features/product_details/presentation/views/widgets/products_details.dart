import '../../../../../core/widgets/custom_saved_button.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/utils/texts.dart';
import 'package:ariam/core/utils/colors.dart';
import 'package:ariam/core/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: AppColors.blackColor,
          thickness: CustomSize().widthSize(context, .01),
          indent: CustomSize().widthSize(context, .35),
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Texts().titleText(
                text: "Product Name",
                fontSize: 50,
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 1,
              child: Texts().subTitleText(
                text: "Price",
                fontSize: 32,
              ),
            ),
          ],
        ),
        Texts().subTitleText(
          text: "Owner name",
        ),
        Wrap(children: [
          Texts().subTitleText(
            text: "Descriptions",
            fontSize: 32,
            maxLines: 20,
          ),
        ]),
        Texts().subTitleText(
          text: "Days to Dilivery: ",
          fontSize: 24,
        ),
        const Spacer(),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomIconButton(
                function: () {},
                icon: const Icon(
                  Iconsax.save_2,
                  color: AppColors.whiteColor,
                ),
              ),
              CustomButton(
                width: .7,
                height: .05,
                buttonName: "add to Cart",
                function: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
