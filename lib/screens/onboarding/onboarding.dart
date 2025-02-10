import 'package:flutter/material.dart';
import 'package:podcast/configs/_string_ext.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_images.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';
import 'package:podcast/router/routes.dart';
import 'package:podcast/widgets/app_button.dart';
import 'package:podcast/widgets/app_textfield.dart';
part 'widgets/_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
