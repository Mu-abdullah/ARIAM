import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/size.dart';
import '../../../../home/presentation/views/widgets/saved_botton.dart';

class ImagesInProductDetails extends StatelessWidget {
  const ImagesInProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: CustomSize().heightSize(context, .5),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetDate.logo),
            ),
          ),
          child: Stack(
            children: const [
              Positioned(
                top: 15,
                right: 15,
                child: SavedButton(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
