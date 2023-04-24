import 'package:flutter/material.dart';
import 'widgets/admin_screen_view_body.dart';

class AdminScreenView extends StatelessWidget {
  const AdminScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: AdminScreenViewBody(),
    ));
  }
}
