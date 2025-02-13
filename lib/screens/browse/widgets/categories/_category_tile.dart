part of '../../browse.dart';

class _CategoryTile extends StatelessWidget {
  final String title;
  final Color color;
  const _CategoryTile({
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.accent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Container(width: 24, height: 24, color: color),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              title,
              style: AppTypography.b1m(),
            ),
          ],
        ),
      ),
    );
  }
}
