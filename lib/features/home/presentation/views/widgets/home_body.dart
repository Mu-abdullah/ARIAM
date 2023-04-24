import 'package:ariam/core/utils/texts.dart';
import 'package:flutter/material.dart';
import 'categories_listview.dart';
import 'rondom_products_listview.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Texts().titleText(
                  text: "Categories",
                  fontSize: 24,
                ),
              ),
              const CategoriesListView(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Texts().titleText(
                  text: "Products",
                  fontSize: 24,
                ),
              ),
              const RondomProductsListView(),
            ],
          ),
        ),
      ],
    );
  }
}
