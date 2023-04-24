import 'package:flutter/material.dart';
import 'auth_logo.dart';
import 'sign_in.dart';

class SignInScreenBody extends StatelessWidget {
  SignInScreenBody({
    super.key,
  });

  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const AuthLogo(screenText: "L\nO\nG\nI\nN", textSize: 65),
        LoginFeilds(),
      ]),
    );
  }
}
