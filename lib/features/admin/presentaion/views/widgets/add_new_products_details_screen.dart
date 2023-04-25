import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/texts.dart';
import '../../manger/add_products_cubit/add_products_cubit.dart';
import '../../manger/add_products_cubit/add_products_state.dart';
import 'products_info.dart';

class AddNewProductDetailsScreen extends StatelessWidget {
  const AddNewProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AddProductsDeatilsScreenBody(),
      ),
    );
  }
}

class AddProductsDeatilsScreenBody extends StatelessWidget {
  AddProductsDeatilsScreenBody({super.key});
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
        return SingleChildScrollView(
          child: Column(
            children: [
              Texts().titleText(
                text: "Add Details",
                fontSize: 48,
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
        );
      },
    );
  }
}
