import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/screens/home/models/drawer_item_model.dart';

List<DrawerItemModel> drawerItems = [
  const DrawerItemModel(
    icon: AppIcons.globe,
    title: "Browse",
  ),
  const DrawerItemModel(
    icon: AppIcons.eye,
    title: "Subscribed",
  ),
  const DrawerItemModel(
    icon: AppIcons.heart,
    title: "Favourites",
  ),
  const DrawerItemModel(
    icon: AppIcons.rotateClock,
    title: "History",
  ),
  const DrawerItemModel(
    icon: AppIcons.card,
    title: "Payments",
  ),
  const DrawerItemModel(
    icon: AppIcons.settings,
    title: "Account Settings",
  ),
];
