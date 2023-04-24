import 'package:ariam/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/texts.dart';
import 'custom_circle_progress.dart';

void customAlertDialog(
  context, {
  required String titleText,
  required String contentText,
  bool circularProgressIndicator = false,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: AppColors.blackColor.withOpacity(.7),
        title: Texts().titleText(
          text: titleText,
          titleColor: AppColors.whiteColor,
        ),
        content: Texts().subTitleText(
          text: contentText,
          subTitleColor: AppColors.whiteColor,
        ),
        actions: <Widget>[
          Column(
            children: [
              Padding(
                padding: EdgeInsets.zero,
                child: circularProgressIndicator == true
                    ? const Center(
                        child: CustomProgressIndecator(),
                      )
                    : const Text(""),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  child: Texts().titleText(
                    text: "Ok",
                    titleColor: AppColors.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
