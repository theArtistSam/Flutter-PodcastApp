part of '../../browse.dart';

class _AuthorSection extends StatelessWidget {
  const _AuthorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Authors",
            style: AppTypography.b1m(
              color: AppTheme.textGrey,
            ),
          ),
          ListView.separated(
            padding: const EdgeInsets.only(top: 45),
            itemCount: authors.length,
            shrinkWrap: true, // Wraps all items into a single row
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return const SizedBox(height: 15);
            },
            itemBuilder: (context, index) {
              final AuthorTileModel author = authors[index];
              return Align(
                heightFactor: .75,
                child: _AuthorTile(
                  name: author.name,
                  totalPodcasts: author.totalPodcasts,
                  totalMinutes: author.totalMinutes,
                  img: author.img,
                  color: author.color,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
