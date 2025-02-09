import 'package:flutter/material.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';

class AppButton extends StatelessWidget {
  final String title;
  final bool isBordered;
  final VoidCallback onTap;
  const AppButton({
    super.key,
    this.isBordered = false,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        decoration: decoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            title,
            style: AppTypography.b1m(),
          ),
        ),
      ),
    );
  }

  BoxDecoration decoration() {
    if (isBordered) {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppTheme.orange,
          width: 1.5,
        ),
      );
    }
    return BoxDecoration(
      color: AppTheme.orange,
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(
          color: AppTheme.orangeShadow,
          spreadRadius: 0,
          blurRadius: 50,
        ),
      ],
    );
  }
}
