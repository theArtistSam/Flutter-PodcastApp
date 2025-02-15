import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podcast/configs/_string_ext.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_images.dart';
import 'package:podcast/configs/app_theme.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Color? appbarColor;
  final bool isBack;
  const AppAppbar({
    super.key,
    this.appbarColor,
    this.isBack = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      surfaceTintColor: appbarColor ?? AppTheme.textGrey,
      backgroundColor: appbarColor ?? AppTheme.background, // Customize color
      automaticallyImplyLeading: false,
      leading: isBack
          ? IconButton(
              icon: SvgPicture.asset(AppIcons.arrowLeft),
              onPressed: () => ''.pop(context),
            )
          : null,
      title: !isBack
          ? Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Image.asset(
                AppImages.appLogo,
                height: 42,
              ),
            )
          : null,
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
