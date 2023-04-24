import 'package:ariam/core/utils/assets.dart';
import 'package:ariam/core/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductsofOwnerFGridView extends StatelessWidget {
  const ProductsofOwnerFGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 3,
      children: List.generate(30, (index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.transparent,
              border: Border.all(
                color: AppColors.blackColor,
                width: 1,
              )),
          margin: const EdgeInsets.all(2),
          child: Center(child: Image.asset(AssetDate.logo)),
        );
      }),
    ));
  }
}
