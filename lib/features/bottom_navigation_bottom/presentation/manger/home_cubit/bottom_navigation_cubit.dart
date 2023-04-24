import 'package:ariam/core/utils/assets.dart';
import 'package:ariam/core/utils/texts.dart';
import 'package:ariam/features/home/presentation/views/home_view.dart';
import 'package:ariam/features/saved/presentation/views/save_view.dart';
import 'package:ariam/features/search/presentation/views/search_view.dart';
import 'package:ariam/features/search/presentation/views/widgets/search_body.dart';
import 'package:ariam/features/user_profile/presentation/views/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../../../../core/utils/colors.dart';
import 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationInitial());

  static BottomNavigationCubit get(context) => BlocProvider.of(context);

  int currentScreenIndex = 0;
  List<Widget> screens = [
    const HomeScreenView(),
    const SearchScreenView(),
    const SavedScreenView(),
    const UserProfileScreenView()
  ];

  List<String> screenTitles = [
    AssetDate.appName,
    "Search",
    "Saved",
    "Profile",
  ];
  List<String> screenSummry = [
    AssetDate.appSummary,
    "Find what you want",
    "Get your uniqe products",
    "You are part of our success",
  ];

  List<SalomonBottomBarItem> bottomBarItems = [
    SalomonBottomBarItem(
      icon: const Icon(
        Iconsax.home,
        color: AppColors.blackColor,
      ),
      title: Texts().subTitleText(
        text: "Home",
        subTitleColor: AppColors.blackColor,
      ),
    ),
    SalomonBottomBarItem(
      icon: const Icon(
        Iconsax.search_normal_1,
        color: AppColors.blackColor,
      ),
      title: Texts().subTitleText(
        text: "Search",
        subTitleColor: AppColors.blackColor,
      ),
    ),
    SalomonBottomBarItem(
      icon: const Icon(
        Iconsax.save_2,
        color: AppColors.blackColor,
      ),
      title: Texts().subTitleText(
        text: "Saved",
        subTitleColor: AppColors.blackColor,
      ),
    ),
    SalomonBottomBarItem(
      icon: const Icon(
        Iconsax.profile_circle,
        color: AppColors.blackColor,
      ),
      title: Texts().subTitleText(
        text: "Profile",
        subTitleColor: AppColors.blackColor,
      ),
    ),
  ];

  void changeBarItem(int index) {
    currentScreenIndex = index;
    if (currentScreenIndex == 1) {
      const HomeScreenView();
    } else if (currentScreenIndex == 2) {
      const SearchBody();
    } else if (currentScreenIndex == 3) {
      const SavedScreenView();
    } else if (currentScreenIndex == 4) {
      const UserProfileScreenView();
    }
    emit(ChangeBarItem());
  }
}
