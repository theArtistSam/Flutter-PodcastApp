import 'package:flutter/material.dart';

class DrawerItemModel {
  final String icon;
  final String title;
  final VoidCallback? onTap;

  const DrawerItemModel({
    required this.icon,
    required this.title,
    this.onTap,
  });
}
