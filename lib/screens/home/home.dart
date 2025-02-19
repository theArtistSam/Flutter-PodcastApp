import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/_string_ext.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_images.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';
import 'package:podcast/router/routes.dart';
import 'package:podcast/screens/home/data/podcast_authors_data.dart';
import 'package:podcast/widgets/podcast_card/_podcast_card.dart';
import 'package:podcast/widgets/podcast_card/data/podcast_card_data.dart';
import 'package:podcast/screens/home/models/podcast_author_model.dart';
import 'package:podcast/widgets/podcast_card/model/podcast_card_model.dart';
import 'package:podcast/widgets/core/app_appbar.dart';
import 'package:podcast/widgets/core/app_icon_button.dart';
import 'package:podcast/widgets/core/drawer/data/drawer_items.dart';
import 'package:podcast/widgets/core/drawer/models/drawer_item_model.dart';

part 'widgets/_body.dart';
part 'widgets/_podcast_tile.dart';
part '../../widgets/tab_list.dart';
part 'widgets/_podcast_author_tile.dart';
part '../../widgets/core/drawer/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
