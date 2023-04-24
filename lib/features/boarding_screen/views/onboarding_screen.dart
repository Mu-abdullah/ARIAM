import 'package:ariam/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'widgets/board_body.dart';

class OnBoardingScreenView extends StatefulWidget {
  const OnBoardingScreenView({super.key});

  @override
  State<OnBoardingScreenView> createState() => _OnBoardingScreenViewState();
}

class _OnBoardingScreenViewState extends State<OnBoardingScreenView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: OnBoardingBody(),
      ),
    );
  }
}
