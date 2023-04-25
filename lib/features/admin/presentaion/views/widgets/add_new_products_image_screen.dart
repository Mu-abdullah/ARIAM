import 'package:ariam/core/utils/app_routs.dart';
import 'package:ariam/core/utils/colors.dart';
import 'package:ariam/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/texts.dart';
import '../../manger/add_products_cubit/add_products_cubit.dart';
import '../../manger/add_products_cubit/add_products_state.dart';
import 'add_product_image.dart';

class AddImageProductsScreenBody extends StatelessWidget {
  AddImageProductsScreenBody({
    super.key,
  });
 
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductsCubit, AddProductsState>(
      listener: (context, state) {},
      builder: (context, state) {
        AddProductsCubit cubit = AddProductsCubit.get(context);
        var productImageFile = cubit.image;
        return SingleChildScrollView(
          child: Column(
            children: [
              Texts().titleText(
                text: "Choose Image",
                fontSize: 48,
              ),
              AddProductImage(
                productImageFile: productImageFile,
                cubit: cubit,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: productImageFile == null
                    ? Expanded(
                        child: CustomButton(
                        function: () {
                          GoRouter.of(context)
                              .pushReplacement(AppRouter.adminScreen);
                        },
                        buttonName: "Cancel",
                        width: 1,
                        titleColor: AppColors.pinkColor,
                      ))
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              child: CustomButton(
                            function: () {
                              GoRouter.of(context)
                                  .pushReplacement(AppRouter.adminScreen);
                            },
                            buttonName: "Cancel",
                            titleColor: AppColors.pinkColor,
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: CustomButton(
                            function: () {
                              GoRouter.of(context)
                                  .push(AppRouter.addProductsDitailsScreen);
                            },
                            buttonName: "Next",
                          )),
                        ],
                      ),
              )
            ],
          ),
        );
      },
    );
  }
}
