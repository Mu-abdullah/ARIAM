import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/size.dart';
import '../../../../../../core/utils/texts.dart';
import '../../../../../../core/widgets/app_name_and_logo.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({
    super.key,
    required this.screenText,
    required this.textSize,
  });
  final String screenText;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: CustomSize().heightSize(context, .5),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(45),
                ),
                color: AppColors.primaryColor),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AppNameAndLogo(),
            )),
        const Spacer(),
        Texts().titleText(
          text: screenText,
          maxLines: 8,
          fontSize: textSize,
        ),
        const Spacer(),
      ],
    );
  }
}
