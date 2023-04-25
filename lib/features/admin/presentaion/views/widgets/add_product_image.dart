import 'dart:io';

import 'package:ariam/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/size.dart';
import '../../../../../core/utils/texts.dart';
import '../../manger/add_products_cubit/add_products_cubit.dart';

class AddProductImage extends StatelessWidget {
  const AddProductImage({
    super.key,
    required this.productImageFile,
    required this.cubit,
  });

  final File? productImageFile;
  final AddProductsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: CustomSize().heightSize(context, .8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.pinkColor.withOpacity(.2),
              image: productImageFile == null
                  ? const DecorationImage(image: AssetImage(AssetDate.logo))
                  : DecorationImage(
                      image: FileImage(productImageFile!), fit: BoxFit.contain),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: CircleAvatar(
            maxRadius: 25,
            backgroundColor: AppColors.whiteColor,
            child: Center(
              child: IconButton(
                icon: const Icon(
                  Iconsax.add_circle,
                  color: AppColors.secondColor,
                ),
                onPressed: () {
                  cubit.getImage();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
