part of '../home.dart';

class _PodcastAuthorTile extends StatelessWidget {
  final String image;
  final String author;
  final int totalPodcasts;
  final int totalFollowers;

  const _PodcastAuthorTile({
    required this.image,
    required this.author,
    required this.totalPodcasts,
    required this.totalFollowers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      decoration: BoxDecoration(
        color: AppTheme.accent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                image,
                height: 64,
                width: 64,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              author,
              style: AppTypography.l1(),
            ),
            Text(
              "Podcasts: $totalPodcasts $totalFollowers",
              style: AppTypography.l1(
                color: AppTheme.textGrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
