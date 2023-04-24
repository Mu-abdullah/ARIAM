import 'package:ariam/core/utils/assets.dart';
import 'package:ariam/core/utils/colors.dart';
import 'package:ariam/core/utils/size.dart';
import 'package:ariam/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import '../../manger/add_products_cubit/add_products_cubit.dart';
import '../../manger/add_products_cubit/add_products_state.dart';
import 'products_info.dart';

class AdminAddProductsScreenViewBody extends StatelessWidget {
  AdminAddProductsScreenViewBody({
    super.key,
  });
  TextEditingController productName = TextEditingController();
  TextEditingController productPrice = TextEditingController();
  TextEditingController productDiscount = TextEditingController();
  TextEditingController dayToDelivery = TextEditingController();
  TextEditingController productCategory = TextEditingController();
  TextEditingController productDescription = TextEditingController();
  String? categoryValue;

  String dropdownValue = 'Option 1';
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductsCubit, AddProductsState>(
      listener: (context, state) {},
      builder: (context, state) {
        AddProductsCubit cubit = AddProductsCubit.get(context);
        var productImageFile = cubit.image;
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: CustomSize().heightSize(context, .6),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          color: AppColors.pinkColor.withOpacity(.2),
                          image: productImageFile == null
                              ? const DecorationImage(
                                  image: AssetImage(AssetDate.logo))
                              : DecorationImage(
                                  image: FileImage(productImageFile),
                                  fit: BoxFit.contain),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
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
                          ))
                    ],
                  ),
                  const CustomDivider(
                    thickness: 2,
                    color: AppColors.blackColor,
                    endIndent: 0,
                    indent: .25,
                  ),
                  NewestProductDetails(
                      formKey: formKey,
                      productName: productName,
                      productPrice: productPrice,
                      dropdownValue: dropdownValue,
                      productDiscount: productDiscount,
                      dayToDelivery: dayToDelivery,
                      productDescription: productDescription),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
