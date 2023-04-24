import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/texts.dart';
import '../../../../../core/widgets/custom_images.dart';
import '../../manger/home_cubit/bottom_navigation_cubit.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.cubit,
  });

  final BottomNavigationCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts().titleText(
                text: cubit.screenTitles[cubit.currentScreenIndex],
                titleColor: AppColors.secondColor,
                fontSize: 28,
              ),
              Texts().subTitleText(
                text: cubit.screenSummry[cubit.currentScreenIndex],
                subTitleColor: AppColors.secondColor,
                fontSize: 21,
              )
            ],
          ),
          const Spacer(),
          const SizedBox(
            height: 55,
            child: CustomLogoImage(),
          )
        ],
      ),
    );
  }
}
