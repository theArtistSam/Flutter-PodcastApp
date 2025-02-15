part of '../../browse.dart';

class _PodcastSection extends StatelessWidget {
  const _PodcastSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Podcasts",
            style: AppTypography.b1m(
              color: AppTheme.textGrey,
            ),
          ),
          ListView.separated(
            padding: const EdgeInsets.only(top: 25),
            itemCount: podcastCardItems.length,
            shrinkWrap: true, // Wraps all items into a single row
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return const SizedBox(height: 20);
            },
            itemBuilder: (context, index) {
              final PodcastCardModel card = podcastCardItems[index];
              return PodcastCard(
                title: card.title,
                image: card.image,
                author: card.author,
                dateCreated: card.dateCreated,
                length: card.length,
              );
            },
          ),
        ],
      ),
    );
  }
}
