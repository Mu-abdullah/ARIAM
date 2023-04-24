import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/size.dart';
import '../../../../../core/utils/texts.dart';
import '../../../../../core/utils/colors.dart';

class CategoriesListViewItems extends StatelessWidget {
  const CategoriesListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        height: CustomSize().heightSize(context, .15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.pinkColor.withOpacity(.3),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AssetDate.logo,
                  height: CustomSize().heightSize(context, .1)),
              Texts().titleText(text: "Category Name"),
            ],
          ),
        ),
      ),
    );
  }
}
