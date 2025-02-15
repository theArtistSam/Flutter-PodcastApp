part of '../screens/home/home.dart';

class TabList extends StatelessWidget {
  final Function(int index) onPressed;
  final List<String> items;
  final int selectedIndex;
  final double? padding;
  const TabList(
      {super.key,
      required this.items,
      required this.onPressed,
      required this.selectedIndex,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: padding ?? 33),
        itemCount: items.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 24);
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onPressed(index),
            child: Text(
              items[index],
              style: AppTypography.b1(
                color: selectedIndex == index
                    ? AppTheme.orange
                    : AppTheme.textGrey,
              ),
            ),
          );
        },
      ),
    );
  }
}
