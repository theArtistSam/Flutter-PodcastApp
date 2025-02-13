import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';

class AppSearchfield extends StatelessWidget {
  const AppSearchfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        // print('Text changed: $value');
      },
      style: AppTypography.b2(),
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SvgPicture.asset(
            AppIcons.search,
            color: AppTheme.textGrey,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        hintText: "Search something...",
        hintStyle: AppTypography.b2m(color: AppTheme.textGrey),

        // Border when NOT focused
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppTheme.borderColor,
            width: 1.5,
          ),
        ),

        // Border when focused
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppTheme.textWhite,
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
