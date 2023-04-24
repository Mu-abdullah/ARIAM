import 'package:flutter/material.dart';

import 'new_products.dart';
import 'owner_store_name.dart';
import 'products_of_owner_graid_view.dart';

class AdminScreenViewBody extends StatelessWidget {
  const AdminScreenViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          OwnerNameAndStore(),
          AddNewProducts(),
          ProductsofOwnerFGridView()
        ],
      ),
    );
  }
}
