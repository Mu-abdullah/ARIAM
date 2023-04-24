import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/size.dart';
import '../../../../../core/utils/texts.dart';

class ProductDetailsInHomeViewCard extends StatelessWidget {
  const ProductDetailsInHomeViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.blackColor.withOpacity(.7)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts().titleText(
                text: "Product Name",
                fontSize: 24,
                titleColor: AppColors.pinkColor,
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Texts().subTitleText(
                          text: "Price", subTitleColor: AppColors.whiteColor)),
                  SizedBox(
                    width: CustomSize().widthSize(context, .03),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Texts().subTitleText(
                        text: "Discount",
                        subTitleColor: AppColors.pinkColor,
                      )),
                ],
              ),
              Texts().subTitleText(
                text: "Brand Name",
                subTitleColor: AppColors.whiteColor,
              ),
            ],
          ),
        ));
  }
}
