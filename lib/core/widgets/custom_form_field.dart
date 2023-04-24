import 'package:flutter/material.dart';

import '../utils/assets.dart';
import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.label,
    required this.prefix,
    
   this.suffix,
    required this.isPassword,
    required this.controller,
    required this.type,
    required this.maxLines,
    required this.onChange,
    required this.validate,
    // this.intialValue ,
  });

  final String hint;
  final String label;
  final Widget prefix;
  final Widget? suffix;
  final bool isPassword;
  // final String? intialValue;
  final TextEditingController controller;
  final TextInputType type;
  final int maxLines;
  final Function(String) onChange;
  final FormFieldValidator validate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontFamily: AssetDate.righteousFont,
        fontSize: 18,
      ),
      onChanged: onChange,
      // initialValue: intialValue,
      validator: validate,
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          fontFamily: AssetDate.righteousFont,
          fontSize: 21,
        ),
        labelText: label,
        suffix: suffix,
        labelStyle: const TextStyle(
          fontFamily: AssetDate.righteousFont,
          fontSize: 21,
        ),
        prefixIcon: prefix,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.whiteColor,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.blackColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
