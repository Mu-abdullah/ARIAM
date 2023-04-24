import 'package:flutter/material.dart';
import 'widgets/details_screen_body.dart';

class ProductDetailsScreenView extends StatelessWidget {
  const ProductDetailsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: DetailsScreenBody(),
    ));
  }
}
