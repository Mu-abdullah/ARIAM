import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/size.dart';
import '../utils/texts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.function,
    required this.buttonName,
    this.width = .7,
    this.height = .05,
    this.titleColor = AppColors.primaryColor,
  });

  final Function() function;
  final String buttonName;
  final double width;
  final double height;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: CustomSize().widthSize(context, width),
        height: CustomSize().heightSize(context, height),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.blackColor),
        child: Center(
          child: Texts().titleText(
            text: buttonName,
            titleColor: titleColor,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
