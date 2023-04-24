import 'package:ariam/core/utils/assets.dart';
import 'package:ariam/core/utils/size.dart';
import 'package:flutter/material.dart';
import 'products_details.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: CustomSize().heightSize(context, .6),
          flexibleSpace: Image.asset(
            AssetDate.logo,
          ),
          floating: false,
          snap: false,
          pinned: false,
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ProductDetails(),
          ),
        ),
      ],
    );
  }
}
