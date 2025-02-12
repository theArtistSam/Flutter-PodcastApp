import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/app_theme.dart';

class AppIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final Color color;
  final double radius;
  final double iH;
  final Color iC;
  final bool isShadow;
  final bool isBordered;
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.radius = 32,
    this.iH = 12,
    this.iC = Colors.white,
    this.isShadow = true,
    this.isBordered = false,
    this.color = AppTheme.orange,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: radius,
        height: radius,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
          border: isBordered ? Border.all(color: AppTheme.borderColor) : null,
          boxShadow: isShadow
              ? [
                  BoxShadow(
                    color: AppTheme.orangeAccent,
                    spreadRadius: 0,
                    blurRadius: 50,
                  )
                ]
              : null,
        ),
        child: SvgPicture.asset(
          icon,
          color: iC,
          height: iH,
        ),
      ),
    );
  }
}
