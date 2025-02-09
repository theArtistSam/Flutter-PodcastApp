import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast/configs/app_theme.dart';

class AppTypography {
  static TextStyle h1b({Color? color}) {
    return GoogleFonts.roboto(
      fontSize: 48,
      fontWeight: FontWeight.bold, // Bold
      color: color ?? AppTheme.textWhite,
    );
  }

  static TextStyle h2m({Color? color}) {
    return GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w500, // Medium
      color: color ?? AppTheme.textWhite,
    );
  }

  static TextStyle b1m({Color? color}) {
    return GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w500, // Medium
      color: color ?? AppTheme.textWhite,
    );
  }

  static TextStyle b1({Color? color}) {
    return GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400, // Regular
      color: color ?? AppTheme.textWhite,
    );
  }

  static TextStyle b2({Color? color}) {
    return GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400, // Regular
      color: color ?? AppTheme.textWhite,
    );
  }

  static TextStyle b2m({Color? color}) {
    return GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500, // Medium
      color: color ?? AppTheme.textWhite,
    );
  }

  static TextStyle l1m({Color? color}) {
    return GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w500, // Medium
      color: color ?? AppTheme.textWhite,
    );
  }

  static TextStyle l1({Color? color}) {
    return GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w400, // Regular
      color: color ?? AppTheme.textWhite,
    );
  }

  /// Custom text style with flexible properties
  static TextStyle custom({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? AppTheme.textWhite,
    );
  }
}
