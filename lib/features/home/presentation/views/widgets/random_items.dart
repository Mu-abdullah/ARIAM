import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_routs.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_images.dart';
import 'product_details_in_home_view.dart';
import 'saved_botton.dart';
import 'spacial_offer.dart';

class RondomProductsListViewItem extends StatelessWidget {
  const RondomProductsListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.productDetailsScreen);
      },
      child: Stack(
        children: const [
          Card(
            color: AppColors.primaryColor,
            child: CustomLogoImage(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: ProductDetailsInHomeViewCard(),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SpcialOffer(),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: SavedButton(),
          ),
        ],
      ),
    );
  }
}
