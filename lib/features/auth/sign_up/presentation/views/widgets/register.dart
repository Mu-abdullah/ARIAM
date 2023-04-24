import 'package:ariam/core/utils/assets.dart';
import 'package:ariam/core/widgets/custom_button.dart';
import 'package:ariam/features/admin/presentaion/manger/add_products_cubit/add_products_state.dart';
import 'package:ariam/features/auth/sign_up/presentation/manger/cubit/sign_up_cubit.dart';
import 'package:ariam/features/auth/sign_up/presentation/manger/cubit/sign_up_state.dart';
import 'package:ariam/features/user_profile/data/user_model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../core/utils/app_routs.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/shared_prefrence.dart';
import '../../../../../../core/widgets/alert_dialog.dart';
import '../../../../../../core/widgets/custom_alert_dialog_with_progress_indecator.dart';
import '../../../../../../core/widgets/custom_circle_progress.dart';
import '../../../../../../core/widgets/custom_form_field.dart';
import '../../../../../../core/widgets/custom_text_button.dart';

class RegisterFeilds extends StatefulWidget {
  RegisterFeilds({
    super.key,
  });

  @override
  State<RegisterFeilds> createState() => _RegisterFeildsState();
}

class _RegisterFeildsState extends State<RegisterFeilds> {
  TextEditingController name = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController mail = TextEditingController();

  TextEditingController password = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) async {
        if (state is SignUpLoading) {
          return alertWithCircleProgress(context, titleText: "Please Wait");
        } else if (state is SignUpSuccess) {
          GoRouter.of(context)
              .pushReplacement(AppRouter.bottomNavigationScreen);
        }
      },
      builder: (context, state) {
        SignUpCubit cubit = SignUpCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomTextField(
                  controller: name,
                  hint: 'Name',
                  isPassword: false,
                  label: 'Name',
                  maxLines: 1,
                  onChange: (value) {},
                  prefix: const Icon(
                    Iconsax.profile_circle,
                    color: AppColors.blackColor,
                  ),
                  type: TextInputType.text,
                  validate: (value) {
                    if (value.isEmpty) {
                      return "It's empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: mail,
                  hint: 'E-mail',
                  isPassword: false,
                  label: 'E-mail',
                  maxLines: 1,
                  onChange: (value) {},
                  prefix: const Icon(
                    Iconsax.sms_edit,
                    color: AppColors.blackColor,
                  ),
                  type: TextInputType.emailAddress,
                  validate: (value) {
                    if (value.isEmpty) {
                      return "It's empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: phone,
                  hint: 'Phone',
                  isPassword: false,
                  label: 'Phone',
                  maxLines: 1,
                  onChange: (value) {},
                  prefix: const Icon(
                    Iconsax.mobile,
                    color: AppColors.blackColor,
                  ),
                  type: TextInputType.phone,
                  validate: (value) {
                    if (value.isEmpty) {
                      return "It's empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: password,
                  hint: 'Password',
                  isPassword: passwordVisibility,
                  label: 'Password',
                  maxLines: 1,
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    child: passwordVisibility
                        ? const Icon(
                            Icons.visibility,
                            size: 18,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            size: 18,
                          ),
                  ),
                  onChange: (value) {},
                  prefix: const Icon(
                    Iconsax.mobile,
                    color: AppColors.blackColor,
                  ),
                  type: TextInputType.visiblePassword,
                  validate: (value) {
                    if (value.isEmpty) {
                      return "It's empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: state is SignUpLoading
                      ? const CustomProgressIndecator()
                      : CustomButton(
                          function: () {
                            if (formKey.currentState!.validate()) {
                              cubit.signUp(
                                  context: context,
                                  email: mail.text,
                                  password: password.text,
                                  model: UserModel(
                                    userName: name.text,
                                    userMail: mail.text,
                                    userPhone: phone.text,
                                  ));
                            }
                          },
                          buttonName: "SignUp",
                          width: .5,
                          titleColor: AppColors.whiteColor,
                        ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: CustomTextButton(
                      buttonName: "Have Account? SignIn",
                      function: () {
                        GoRouter.of(context).pushReplacement(
                          AppRouter.signInScreen,
                        );
                      }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
