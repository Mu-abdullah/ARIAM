import 'package:ariam/core/widgets/custom_alert_dialog_with_progress_indecator.dart';
import 'package:ariam/features/auth/sign_in/presentation/manger/cubit/sign_in_cubit.dart';
import 'package:ariam/features/auth/sign_in/presentation/manger/cubit/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../../core/utils/app_routs.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_circle_progress.dart';
import '../../../../../../core/widgets/custom_form_field.dart';
import '../../../../../../core/widgets/custom_text_button.dart';

class LoginFeilds extends StatefulWidget {
  LoginFeilds({
    super.key,
  });

  @override
  State<LoginFeilds> createState() => _LoginFeildsState();
}

class _LoginFeildsState extends State<LoginFeilds> {
  TextEditingController password = TextEditingController();

  TextEditingController mail = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) async {
        if (state is SignInLoading) {
          return alertWithCircleProgress(context, titleText: "Please Wait");
        }
        if (state is SignInSuccess) {
          GoRouter.of(context)
              .pushReplacement(AppRouter.bottomNavigationScreen);
        }
      },
      builder: (context, state) {
        SignInCubit cubit = SignInCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
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
                  child: state is SignInLoading
                      ? const CustomProgressIndecator()
                      : CustomButton(
                          function: () {
                            if (formKey.currentState!.validate()) {
                              cubit.signIn(
                                  context: context,
                                  email: mail.text,
                                  password: password.text);
                            }
                          },
                          buttonName: "Login",
                          width: .5,
                          titleColor: AppColors.whiteColor,
                        ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: CustomTextButton(
                      buttonName: "Haven't Account? SignUp",
                      function: () {
                        GoRouter.of(context).pushReplacement(
                          AppRouter.signUpScreen,
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
