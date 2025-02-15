part of '../../browse.dart';

class _TopicSection extends StatelessWidget {
  const _TopicSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Topics",
            style: AppTypography.b1m(
              color: AppTheme.textGrey,
            ),
          ),
          ListView.separated(
            padding: const EdgeInsets.only(top: 25),
            itemCount: topicTileData.length,
            shrinkWrap: true, // Wraps all items into a single row
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return const SizedBox(height: 15);
            },
            itemBuilder: (context, index) {
              final TopicTileModel item = topicTileData[index];
              return GestureDetector(
                onTap: () => AppRoutes.topic.push(context),
                child: _TopicTile(
                  title: item.title,
                  totalAuthors: item.totalAuthors,
                  totalPodcasts: item.totalPodcasts,
                  totalMinutes: item.totalMinutes,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
