part of '../../browse.dart';

class _TopicTile extends StatelessWidget {
  final String title;
  final int totalAuthors;
  final int totalPodcasts;
  final int totalMinutes;
  const _TopicTile({
    required this.title,
    required this.totalAuthors,
    required this.totalPodcasts,
    required this.totalMinutes,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              width: double.infinity,
              fit: BoxFit.cover,
              AppImages.musicBg,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTypography.h2m(),
                ),
                // const SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.profile,
                      height: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Authors: $totalAuthors",
                      style: AppTypography.b2(color: AppTheme.textGrey),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppIcons.mic,
                      height: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Podcasts: $totalPodcasts $totalMinutes",
                      style: AppTypography.b2(color: AppTheme.textGrey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
