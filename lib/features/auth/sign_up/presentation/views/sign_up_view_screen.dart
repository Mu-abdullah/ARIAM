import 'package:ariam/features/auth/sign_up/presentation/views/widgets/register_body.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/colors.dart';

class SignUpScreenView extends StatelessWidget {
  const SignUpScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SignUpScreenBody(),
      ),
    );
  }
}
