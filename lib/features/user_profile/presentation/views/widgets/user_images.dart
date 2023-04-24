import 'package:ariam/core/utils/app_routs.dart';
import 'package:ariam/core/utils/texts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.blackColor, width: 4),
                borderRadius: BorderRadius.circular(1000),
                image: const DecorationImage(
                    image: AssetImage(
                  AssetDate.avatar,
                ))),
          ),
          const Spacer(),
          Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        alertLogOut(context);
                      },
                      icon: const Icon(
                        Iconsax.logout_1,
                        size: 36,
                      ),
                    ),
                    Texts().subTitleText(
                      text: "Log Out",
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Future<dynamic> alertLogOut(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.blackColor.withOpacity(.8),
          title: Align(
            alignment: Alignment.topLeft,
            child: Texts().titleText(
              text: "Log Out?",
              titleColor: const Color.fromARGB(255, 199, 193, 193),
            ),
          ),
          content: Texts().subTitleText(
            text: "Are you sure to Log Out",
            subTitleColor: AppColors.whiteColor,
          ),
          actions: <Widget>[
            Row(
              children: [
                TextButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    GoRouter.of(context)
                        .pushReplacement(AppRouter.signInScreen);
                  },
                  child: Texts().titleText(
                    text: "Log out",
                    titleColor: AppColors.pinkColor,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () async {
                    GoRouter.of(context).pop(context);
                  },
                  child: Texts().titleText(
                    text: "Stay",
                    titleColor: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
