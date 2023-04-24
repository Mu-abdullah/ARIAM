import 'package:flutter/material.dart';
import 'saved_item_card.dart';

class SaveScreenBodyView extends StatelessWidget {
  const SaveScreenBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: const [
              ////
              ////
              //// put any thing
              ////
              ////
              ////
              ////
            ],
          ),
        ),
        const SliverFillRemaining(
          child: SavedItemCardListView(),
        )
      ],
    );
  }
}

class SavedItemCardListView extends StatelessWidget {
  const SavedItemCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const SavedItemCard();
      },
    );
  }
}
