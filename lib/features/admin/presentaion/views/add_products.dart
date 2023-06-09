import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manger/add_products_cubit/add_products_cubit.dart';
import '../manger/add_products_cubit/add_products_state.dart';
import 'widgets/add_new_products_image_screen.dart';

class AddImageProductsScreenView extends StatelessWidget {
  const AddImageProductsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductsCubit, AddProductsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: AddImageProductsScreenBody(),
          ),
        );
      },
    );
  }
}
