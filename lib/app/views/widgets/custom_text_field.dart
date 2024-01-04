import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/styles/app_text_styles.dart';
import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final int? maxLines;
  final Widget? suffixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String text)? onSubmitted;
  final InputDecoration? decoration;
  final Function(String value)? onChanged;
  const CustomTextFormField({
    Key? key,
    this.controller,
    this.keyboardType,
    this.obscureText,
    this.maxLines = 1,
    this.suffixIcon,
    this.hintText,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText ?? false,
        validator: validator,
        maxLines: maxLines,
        decoration: InputDecoration( hintStyle: AppFonts.caption(),
          suffixIcon: suffixIcon,
          hintText: hintText,
          fillColor: AppColors.pageBackgroundColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.mainGrey),
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white),
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.errorRed),
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.mainGrey),
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
