import 'package:flutter/material.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_images.dart';
import '../../../../home/presentation/views/widgets/product_details_in_home_view.dart';
import '../../../../home/presentation/views/widgets/saved_botton.dart';
import '../../../../home/presentation/views/widgets/spacial_offer.dart';

class SavedItemCard extends StatelessWidget {
  const SavedItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
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
