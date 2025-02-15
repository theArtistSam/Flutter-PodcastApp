part of '../../browse.dart';

class _EpisodeSection extends StatelessWidget {
  const _EpisodeSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Episodes",
            style: AppTypography.b1m(
              color: AppTheme.textGrey,
            ),
          ),
          ListView.separated(
            padding: const EdgeInsets.only(top: 25),
            itemCount: podcastEpisodes.length,
            shrinkWrap: true, // Wraps all items into a single row
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return const SizedBox(height: 20);
            },
            itemBuilder: (context, index) {
              final PodcastEpisodeModel card = podcastEpisodes[index];
              return PodcastEpisodeTile(
                title: card.title,
                dateCreated: card.dateCreated,
                duration: card.duration,
                size: card.size,
                description: card.description,
              );
            },
          ),
        ],
      ),
    );
  }
}
