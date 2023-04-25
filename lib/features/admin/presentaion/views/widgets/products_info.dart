import 'package:ariam/features/admin/presentaion/manger/add_products_cubit/add_products_cubit.dart';
import 'package:ariam/features/admin/presentaion/manger/add_products_cubit/add_products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/texts.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_form_field.dart';

class NewestProductDetails extends StatelessWidget {
  NewestProductDetails({
    super.key,
    required this.formKey,
    required this.productName,
    required this.productPrice,
    required this.dropdownValue,
    required this.productDiscount,
    required this.dayToDelivery,
    required this.productDescription,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController productName;
  final TextEditingController productPrice;
  final String dropdownValue;
  final TextEditingController productDiscount;
  final TextEditingController dayToDelivery;
  final TextEditingController productDescription;
  String? categoryValue;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductsCubit, AddProductsState>(
      listener: (context, state) {},
      builder: (context, state) {
        AddProductsCubit cubit = AddProductsCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomTextField(
                  controller: productName,
                  hint: 'Product Name',
                  isPassword: false,
                  label: 'Product Name',
                  maxLines: 2,
                  onChange: (value) {},
                  prefix: const Icon(Iconsax.receipt_item),
                  type: TextInputType.name,
                  validate: (value) {
                    if (value.isEmpty) {
                      return "It's empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: CustomTextField(
                        controller: productPrice,
                        hint: 'Price',
                        isPassword: false,
                        label: 'Price',
                        maxLines: 1,
                        onChange: (value) {},
                        prefix: const Icon(Iconsax.wallet_1),
                        type: TextInputType.number,
                        validate: (value) {
                          if (value.isEmpty) {
                            return "It's empty";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Texts().subTitleText(
                      text: "Discount?",
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: NeumorphicSwitch(
                        style: const NeumorphicSwitchStyle(
                            lightSource: LightSource(25, 10),
                            activeThumbColor: AppColors.whiteColor,
                            inactiveThumbColor: AppColors.blackColor,
                            activeTrackColor: AppColors.secondColor,
                            inactiveTrackColor: AppColors.pinkColor),
                        value: cubit.isDisc,
                        onChanged: (bool value) {
                          cubit.disc();
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: cubit.isDisc == true
                      ? CustomTextField(
                          controller: productDiscount,
                          hint: 'Discount',
                          isPassword: false,
                          label: 'Discount',
                          maxLines: 1,
                          onChange: (value) {},
                          prefix: const Icon(Iconsax.discount_circle),
                          type: TextInputType.number,
                          validate: (value) {
                            if (value.isEmpty) {
                              return "It's empty";
                            }
                            return null;
                          },
                        )
                      : null,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  controller: dayToDelivery,
                  hint: 'Days to delivery',
                  isPassword: false,
                  label: 'Days to delivery',
                  maxLines: 1,
                  onChange: (value) {},
                  prefix: const Icon(Iconsax.calendar),
                  type: TextInputType.number,
                  validate: (value) {
                    if (value.isEmpty) {
                      return "It's empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  controller: productDescription,
                  hint: 'Description',
                  isPassword: false,
                  label: 'Description',
                  maxLines: 15,
                  onChange: (value) {},
                  prefix: const Icon(Iconsax.calendar),
                  type: TextInputType.text,
                  validate: (value) {
                    if (value.isEmpty) {
                      return "It's empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  function: () {
                    if (formKey.currentState!.validate()) {
                      
                    }
                  },
                  buttonName: "Upload",
                  width: 1,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
