import 'package:ariam/core/utils/colors.dart';
import 'package:ariam/core/utils/texts.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.buttonName,
    this.textcolor = AppColors.secondColor,
    required this.function,
  });

  final String buttonName;
  final Color textcolor;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Texts().titleText(
        text: buttonName,
        titleColor: textcolor,
      ),
    );
  }
}
