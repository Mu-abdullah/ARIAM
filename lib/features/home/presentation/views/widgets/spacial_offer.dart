import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/texts.dart';

class SpcialOffer extends StatelessWidget {
  const SpcialOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.blackColor.withOpacity(.7)),
      child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Texts().titleText(
                text: "Special Offer",
                titleColor: AppColors.primaryColor,
              ),
              Texts().titleText(
                  text: "10 %", titleColor: AppColors.whiteColor, fontSize: 24),
            ],
          )),
    );
  }
}
