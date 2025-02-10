import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/app_theme.dart';

class AppIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final double pH;
  final double pV;
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.pH = 22.0,
    this.pV = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppTheme.orange,
            borderRadius: BorderRadius.circular(55),
            boxShadow: [
              BoxShadow(
                color: AppTheme.orangeShadow,
                spreadRadius: 0,
                blurRadius: 50,
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: pV,
            horizontal: pH,
          ),
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
