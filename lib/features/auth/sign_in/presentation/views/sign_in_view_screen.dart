import 'package:flutter/material.dart';
import '../../../../../core/utils/colors.dart';
import 'widgets/sign_in_body.dart';

class SignInScreenView extends StatelessWidget {
  const SignInScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SignInScreenBody(),
      ),
    );
  }
}
