import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/_string_ext.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_images.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';
import 'package:podcast/screens/podcast/data/podcast_episode_data.dart';
import 'package:podcast/screens/podcast/models/podcast_episode_model.dart';
import 'package:podcast/widgets/core/app_icon_button.dart';

part 'widgets/_body.dart';
part 'widgets/_podcast_episode_tile.dart';
part 'widgets/_slider.dart';
part 'widgets/_header.dart';
part 'widgets/_appbar.dart';

class PodcastScreen extends StatelessWidget {
  const PodcastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
