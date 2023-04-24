import 'package:flutter/material.dart';

import '../../../../../core/utils/texts.dart';
import 'store_image.dart';

class OwnerNameAndStore extends StatelessWidget {
  const OwnerNameAndStore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: StoreProfileImage(),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Texts().titleText(
                  text: "StoreName",
                  fontSize: 34,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Texts().titleText(
            text: "Hello OwnerName",
            fontSize: 34,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
