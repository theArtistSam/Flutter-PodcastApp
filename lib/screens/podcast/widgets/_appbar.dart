part of '../podcast.dart';

class _Appbar extends StatelessWidget implements PreferredSizeWidget {
  const _Appbar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent, // Customize color
      elevation: 0, // Remove shadow
      leading: IconButton(
        icon: SvgPicture.asset(AppIcons.arrowLeft),
        onPressed: () => ''.pop(context),
      ),
      centerTitle: true, // Centers the text
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
