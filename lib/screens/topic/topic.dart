import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_images.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';
import 'package:podcast/screens/home/home.dart';
import 'package:podcast/widgets/core/app_appbar.dart';
import 'package:podcast/widgets/core/app_button.dart';
import 'package:podcast/widgets/podcast_card/_podcast_card.dart';
import 'package:podcast/widgets/podcast_card/data/podcast_card_data.dart';
import 'package:podcast/widgets/podcast_card/model/podcast_card_model.dart';

part 'widgets/_body.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
