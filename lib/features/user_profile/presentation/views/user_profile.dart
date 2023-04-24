import 'package:flutter/material.dart';

import 'widgets/user_profile_body.dart';

class UserProfileScreenView extends StatelessWidget {
  const UserProfileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserProfileBody(),
    );
  }
}
