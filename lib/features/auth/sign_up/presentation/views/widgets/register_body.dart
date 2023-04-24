import 'package:ariam/features/auth/sign_up/presentation/views/widgets/register.dart';
import 'package:flutter/material.dart';

import '../../../../sign_in/presentation/views/widgets/auth_logo.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AuthLogo(
            screenText: "R\nE\nG\nS\nT\nE\nR",
            textSize: 50,
          ),
          RegisterFeilds(),
        ],
      ),
    );
  }
}
