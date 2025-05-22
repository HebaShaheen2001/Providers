import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:providers/app_material/app_colors.dart';

class MainTextFiledWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? error;
  final String hintText;
  final Widget? icon;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool iconVi;
  final Widget? suffix;
  final int maxLines;
  final bool enabled;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onEditingComplete;
  final void Function(String)? onChanged;
  const MainTextFiledWidget({
    super.key,
    this.controller,
    this.error,
    required this.hintText,
    this.icon,
    this.textInputType,
    this.iconVi = false,
    this.suffix,
    this.maxLines = 1,
    this.enabled = true,
    this.autofocus = false,
    this.textInputAction,
    this.onEditingComplete,
    this.onChanged,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      controller: controller,
      obscureText: iconVi,
      obscuringCharacter: '*',
      autofocus: autofocus,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      onEditingComplete: onEditingComplete,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        suffixIcon: suffix,
        errorText: error,
        prefixIcon: icon,
        prefixIconColor: Colors.black,
        hintText: hintText,
        enabled: enabled,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xffAEAEAE)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.primryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
