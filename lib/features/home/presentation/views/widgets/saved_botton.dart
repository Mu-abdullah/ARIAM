import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_saved_button.dart';
import '../../manger/cubit/home_cubit_cubit.dart';
import '../../manger/cubit/home_cubit_state.dart';

class SavedButton extends StatelessWidget {
  const SavedButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeCubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          HomeCubit cubit = HomeCubit.get(context);
          return CustomIconButton(
            function: () {
              cubit.isSaved();
            },
            icon: cubit.saveIcon,
            width: .15,
            height: .05,
          );
        },
      ),
    );
  }
}
