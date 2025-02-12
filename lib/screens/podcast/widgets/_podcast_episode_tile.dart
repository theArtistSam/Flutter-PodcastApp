part of '../podcast.dart';

class _PodcastEpisodeTile extends StatelessWidget {
  final String title;
  final String dateCreated;
  final String duration;
  final int size;
  const _PodcastEpisodeTile({
    required this.title,
    required this.dateCreated,
    required this.duration,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppTheme.accent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            AppIconButton(
              icon: AppIcons.pause,
              onTap: () {},
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.b2(),
                ),
                const SizedBox(height: 10),
                Text(
                  dateCreated,
                  style: AppTypography.l1(color: AppTheme.textGrey),
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  duration,
                  style: AppTypography.l1(color: AppTheme.textGrey),
                ),
                const SizedBox(height: 7),
                Text(
                  "$size mb",
                  style: AppTypography.l1(color: AppTheme.textGrey),
                )
              ],
            ),
            const SizedBox(width: 16),
            AppIconButton(
              icon: AppIcons.download,
              onTap: () {},
              isBordered: true,
              isShadow: false,
              color: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
