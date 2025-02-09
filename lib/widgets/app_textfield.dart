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
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.background,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppTheme.borderColor,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
            ),
            const SizedBox(
              width: 28,
            ),
            Expanded(
              child: TextField(
                obscureText: isPassword,
                onChanged: (value) {
                  // print('Text changed: $value');
                },
                style: AppTypography.b2(),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 21,
                  ),
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: AppTypography.b2(
                    color: AppTheme.textGrey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
