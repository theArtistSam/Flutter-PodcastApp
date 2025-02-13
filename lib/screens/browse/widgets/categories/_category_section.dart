part of '../../browse.dart';

class _CategorySection extends StatelessWidget {
  const _CategorySection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: AppTypography.b1m(
              color: AppTheme.textGrey,
            ),
          ),
          GridView.builder(
            padding: const EdgeInsets.only(top: 25),
            itemCount: categoryTileItems.length,
            shrinkWrap: true, // Wraps all items into a single row
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 columns
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.40, // Aspect ratio for the grid items
            ),
            itemBuilder: (context, index) {
              final CategoryTileModel item = categoryTileItems[index];
              return _CategoryTile(title: item.title, color: item.color);
            },
          ),
        ],
      ),
    );
  }
}
