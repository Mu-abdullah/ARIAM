import 'package:ariam/features/admin/presentaion/manger/add_products_cubit/add_products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../manger/add_products_cubit/add_products_cubit.dart';

class StoreProfileImage extends StatelessWidget {
  const StoreProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductsCubit, AddProductsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        AddProductsCubit cubit = AddProductsCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.blackColor, width: 4),
                borderRadius: BorderRadius.circular(1000),
                image: const DecorationImage(
                    image: AssetImage(
                  AssetDate.avatar,
                ))),
          ),
        );
      },
    );
  }
}
