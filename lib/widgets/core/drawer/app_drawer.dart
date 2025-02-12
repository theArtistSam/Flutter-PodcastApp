part of '../../../screens/home/home.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppTheme.accent,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 15, 5, 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello,",
                            style: AppTypography.b1(
                              color: AppTheme.textGrey,
                            ),
                          ),
                          Text(
                            "Samatha!",
                            style: AppTypography.h2m(),
                          )
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppIcons.bell,
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        onPressed: () => ''.pop(context),
                        icon: SvgPicture.asset(
                          AppIcons.cross,
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(color: AppTheme.borderColor, height: 0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 15.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          AppImages.avatar,
                          height: 32,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Listened time",
                            style: AppTypography.l1(),
                          ),
                          Text(
                            "24:15:05",
                            style: AppTypography.l1(
                              color: AppTheme.textGrey,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Playlists",
                            style: AppTypography.l1(),
                          ),
                          Text(
                            "27",
                            style: AppTypography.l1(
                              color: AppTheme.textGrey,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Following",
                            style: AppTypography.l1(),
                          ),
                          Text(
                            "179",
                            style: AppTypography.l1(
                              color: AppTheme.textGrey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(color: AppTheme.borderColor, height: 0),
              ],
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                final DrawerItemModel item = drawerItems[index];

                return ListTile(
                  leading: SvgPicture.asset(item.icon),
                  title: Text(
                    item.title,
                    style: AppTypography.b2m(),
                  ),
                  onTap: () {
                    switch (item.title) {
                      case 'Browse':
                        if (!AppRoutes.browse.sameRoute()) {
                          AppRoutes.browse.clearStackAndPush(context);
                        }
                        break;
                      case 'Home':
                        if (!AppRoutes.home.sameRoute()) {
                          AppRoutes.home.clearStackAndPush(context);
                        }
                        break;
                      default:
                    }
                  },
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.borderColor),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 25,
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      Text(
                        "Logout",
                        style: AppTypography.b1m(),
                      ),
                      const Spacer(),
                      SvgPicture.asset(AppIcons.shareArrow)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
