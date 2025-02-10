part of '../home.dart';

class _TablistView extends StatelessWidget {
  final Function(int index) onPressed;
  final List<String> items;
  final int selectedIndex;
  const _TablistView({
    required this.items,
    required this.onPressed,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 33),
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
