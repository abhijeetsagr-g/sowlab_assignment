import 'package:flutter/material.dart';
import 'package:sowlab_assignment/core/config/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.suffixWidget,
    this.keyboardType,
    this.validator,
  });

  final IconData icon;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixWidget;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: AppColors.textPrimary, size: 20),
        suffixIcon: suffixWidget,
        hintText: hintText,
      ),
    );
  }
}
