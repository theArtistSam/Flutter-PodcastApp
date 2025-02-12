import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';

class AppTextfield extends StatelessWidget {
  final String icon;
  final String hintText;
  final bool isPassword;
  const AppTextfield({
    super.key,
    required this.icon,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      onChanged: (value) {
        // print('Text changed: $value');
      },
      style: AppTypography.b2(),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 27,
            right: 27,
          ), // Adjust spacing here
          child: SvgPicture.asset(
            icon,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 27,
          vertical: 21,
        ),
        hintText: hintText,
        hintStyle: AppTypography.b2(color: AppTheme.textGrey),

        // Border when NOT focused
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: AppTheme.borderColor, width: 1.5),
        ),

        // Border when focused
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppTheme.orange,
            width: 1.5,
          ),
        ),

        // Background color
        filled: true,
        fillColor: AppTheme.background,
      ),
    );
  }
}
