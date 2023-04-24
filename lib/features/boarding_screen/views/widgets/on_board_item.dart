import 'package:ariam/core/utils/colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/texts.dart';
import '../../model/board_model.dart';

class OnBoardItems extends StatelessWidget {
  const OnBoardItems({
    super.key,
    required this.boardModel,
  });
  final BoardModel boardModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 295,
          width: 295,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.blackColor,
              image: DecorationImage(
                  image: AssetImage(
                boardModel.image!,
              ))),
        ),
        const SizedBox(
          height: 10,
        ),
        Texts().titleText(text: boardModel.title),
        const SizedBox(
          height: 10,
        ),
        Texts().subTitleText(text: boardModel.body),
      ],
    );
  }
}
