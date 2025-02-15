import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_images.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';
import 'package:podcast/screens/browse/widgets/authors/data/author_tile_data.dart';
import 'package:podcast/screens/browse/widgets/data/category_data.dart';
import 'package:podcast/screens/browse/widgets/categories/data/category_tile_data.dart';
import 'package:podcast/screens/browse/widgets/topics/data/topic_tile_data.dart';
import 'package:podcast/screens/browse/widgets/authors/model/author_tile_model.dart';
import 'package:podcast/screens/browse/widgets/models/category_model.dart';
import 'package:podcast/screens/browse/widgets/categories/model/category_tile_model.dart';
import 'package:podcast/screens/browse/widgets/topics/model/topic_tile_model.dart';
import 'package:podcast/screens/home/home.dart';
import 'package:podcast/widgets/core/app_appbar.dart';
import 'package:podcast/widgets/core/app_searchfield.dart';
import 'package:podcast/widgets/podcast_card/_podcast_card.dart';
import 'package:podcast/widgets/podcast_card/data/podcast_card_data.dart';
import 'package:podcast/widgets/podcast_card/model/podcast_card_model.dart';
import 'package:podcast/widgets/podcast_episode_tile/_podcast_episode_tile.dart';
import 'package:podcast/widgets/podcast_episode_tile/data/podcast_episode_data.dart';
import 'package:podcast/widgets/podcast_episode_tile/model/podcast_episode_model.dart';

// Widgets
part 'widgets/_body.dart';
part 'widgets/_category.dart';
part 'widgets/categories/_category_tile.dart';
part 'widgets/categories/_category_section.dart';
part 'widgets/authors/_author_tile.dart';
part 'widgets/authors/_author_section.dart';
part 'widgets/topics/_topic_tile.dart';
part 'widgets/topics/_topic_section.dart';
part 'widgets/podcasts/_podcast_section.dart';
part 'widgets/episodes/_episode_section.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
