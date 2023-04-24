import 'package:flutter/material.dart';

import '../../../../../core/utils/size.dart';
import 'categories_listview_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CustomSize().heightSize(context, .2),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CategoriesListViewItems();
        },
      ),
    );
  }
}
