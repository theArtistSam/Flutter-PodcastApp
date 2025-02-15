import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_images.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';
import 'package:podcast/screens/home/home.dart';
import 'package:podcast/widgets/core/app_appbar.dart';
import 'package:podcast/widgets/core/app_button.dart';
import 'package:podcast/widgets/podcast_episode_tile/_podcast_episode_tile.dart';
import 'package:podcast/widgets/podcast_episode_tile/data/podcast_episode_data.dart';
import 'package:podcast/widgets/podcast_episode_tile/model/podcast_episode_model.dart';

part 'widgets/_body.dart';
part 'widgets/_header.dart';

class AuthorScreen extends StatelessWidget {
  const AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
