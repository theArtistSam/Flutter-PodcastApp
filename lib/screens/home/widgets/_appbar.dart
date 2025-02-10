part of '../home.dart';

class _Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
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
          onPressed: () {},
        ),
        const SizedBox(width: 15),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
