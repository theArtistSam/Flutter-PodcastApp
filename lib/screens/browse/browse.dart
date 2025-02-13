import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_images.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';
import 'package:podcast/screens/browse/widgets/data/author_tile_data.dart';
import 'package:podcast/screens/browse/widgets/data/category_data.dart';
import 'package:podcast/screens/browse/widgets/data/category_tile_data.dart';
import 'package:podcast/screens/browse/widgets/data/topic_tile_data.dart';
import 'package:podcast/screens/browse/widgets/models/author_tile_model.dart';
import 'package:podcast/screens/browse/widgets/models/category_model.dart';
import 'package:podcast/screens/browse/widgets/models/category_tile_model.dart';
import 'package:podcast/screens/browse/widgets/models/topic_tile_model.dart';
import 'package:podcast/screens/home/home.dart';
import 'package:podcast/widgets/core/app_appbar.dart';
import 'package:podcast/widgets/core/app_searchfield.dart';

// Widgets
part 'widgets/_body.dart';
part 'widgets/_category.dart';
part 'widgets/categories/_category_tile.dart';
part 'widgets/categories/_category_section.dart';
part 'widgets/authors/_author_tile.dart';
part 'widgets/authors/_author_section.dart';
part 'widgets/topics/_topic_tile.dart';
part 'widgets/topics/_topic_section.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}
