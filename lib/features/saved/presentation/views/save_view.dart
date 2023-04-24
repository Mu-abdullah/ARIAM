import 'package:flutter/material.dart';
import 'widgets/save_body.dart';

class SavedScreenView extends StatelessWidget {
  const SavedScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SaveScreenBodyView(),
    );
  }
}
