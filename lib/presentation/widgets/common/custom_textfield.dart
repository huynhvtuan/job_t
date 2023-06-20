import 'package:flutter/material.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/resources/color_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.keyboardType,
      this.obscureText = false,
      this.hintText,
      this.controller,
      this.suffixIcon,
      this.validator});
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.lightTextFieldBgGrey,
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: AppText.l1!,
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.red, width: 0.5)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.red, width: 0.5)),
          disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: AppColor.darkGrey, width: 0.5)),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
          border: InputBorder.none,
        ),
        controller: controller,
        cursorHeight: 25,
        style: AppText.l1,
        validator: validator,
      ),
    );
  }
}
