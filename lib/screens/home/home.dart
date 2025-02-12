import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/_string_ext.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_images.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';
import 'package:podcast/router/routes.dart';
import 'package:podcast/screens/home/data/drawer_items.dart';
import 'package:podcast/screens/home/data/podcast_authors_data.dart';
import 'package:podcast/screens/home/data/podcast_card_data.dart';
import 'package:podcast/screens/home/data/podcast_data.dart';
import 'package:podcast/screens/home/models/drawer_item_model.dart';
import 'package:podcast/screens/home/models/podcast_author_model.dart';
import 'package:podcast/screens/home/models/podcast_card_model.dart';
import 'package:podcast/widgets/app_icon_button.dart';

part 'widgets/_body.dart';
part 'widgets/_appbar.dart';
part 'widgets/_podcast_card.dart';
part 'widgets/_podcast_tile.dart';
part 'widgets/_tab_listview.dart';
part 'widgets/_podcast_author_tile.dart';
part 'widgets/_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
