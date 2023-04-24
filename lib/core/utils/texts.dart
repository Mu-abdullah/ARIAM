import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class Texts {
  Widget titleText({
    required text,
    double fontSize = 21,
    String? fontFamily = AssetDate.righteousFont,
    Color? titleColor,
    FontWeight? fontWeight = FontWeight.bold,
    int maxLines = 2,
  }) {
    return Text(
      text,
      textAlign: TextAlign.center,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: titleColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }

  Widget subTitleText({
    required text,
    Color? subTitleColor,
    double fontSize = 18,
    FontWeight? fontWeight = FontWeight.normal,
    String? fontFamily = AssetDate.righteousFont,
    int maxLines = 2,
  }) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        color: subTitleColor,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
