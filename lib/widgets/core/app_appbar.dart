import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_images.dart';
import 'package:podcast/configs/app_theme.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      surfaceTintColor: AppTheme.textGrey,
      backgroundColor: AppTheme.background, // Customize color
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Image.asset(
          AppImages.appLogo,
          height: 42,
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(AppIcons.search),
          onPressed: () {},
        ),
        const SizedBox(width: 30),
        IconButton(
          icon: SvgPicture.asset(AppIcons.menu),
          onPressed: () => Scaffold.of(context).openEndDrawer(),
        ),
        const SizedBox(width: 15),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
