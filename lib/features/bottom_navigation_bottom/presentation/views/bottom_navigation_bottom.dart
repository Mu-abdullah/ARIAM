import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/custom_alert_dialog_with_progress_indecator.dart';
import '../manger/home_cubit/bottom_navigation_cubit.dart';
import '../manger/home_cubit/bottom_navigation_state.dart';
import 'widgets/custom_app_bar.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationCubit, BottomNavigationState>(
      listener: (context, state) {},
      builder: (context, state) {
        BottomNavigationCubit cubit = BottomNavigationCubit.get(context);
        return SafeArea(
          child: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () {
              alertWithCircleProgress(context, titleText: "Please Wait");
            }),
            appBar: AppBar(
                backgroundColor: AppColors.whiteColor,
                elevation: 2,
                title: CustomAppBar(cubit: cubit)),
            body: cubit.screens[cubit.currentScreenIndex],
            bottomNavigationBar: SalomonBottomBar(
              selectedColorOpacity: .3,
              items: cubit.bottomBarItems,
              onTap: cubit.changeBarItem,
              currentIndex: cubit.currentScreenIndex,
              selectedItemColor: AppColors.secondColor,
            ),
          ),
        );
      },
    );
  }
}
