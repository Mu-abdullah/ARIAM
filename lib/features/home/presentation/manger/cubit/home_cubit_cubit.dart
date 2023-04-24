import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../core/utils/colors.dart';
import 'home_cubit_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit() : super(HomeCubitInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  bool pressed = false;
  Icon saveIcon = const Icon(
    Iconsax.save_2,
    color: AppColors.whiteColor,
  );

  void isSaved() {
    pressed = !pressed;
    saveIcon = pressed
        ? const Icon(
            Iconsax.save_21,
            color: AppColors.whiteColor,
          )
        : const Icon(
            Iconsax.save_2,
            color: AppColors.whiteColor,
          );
    emit(PressSaveButton());
  }
}
