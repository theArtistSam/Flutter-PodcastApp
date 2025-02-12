part of '../home.dart';

class _PodcastTile extends StatelessWidget {
  final String title;
  final String image;
  final String author;
  final String length;
  const _PodcastTile({
    required this.title,
    required this.image,
    required this.author,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 177,
      decoration: BoxDecoration(
        color: AppTheme.accent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                height: 147,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Text(
                title,
                style: AppTypography.b2m(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.clock,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          length,
                          style: AppTypography.l1(
                            color: AppTheme.textGrey,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            AppImages.avatar,
                            height: 16,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          author,
                          style: AppTypography.l1(),
                        )
                      ],
                    )
                  ],
                ),
                AppIconButton(
                  icon: AppIcons.pause,
                  onTap: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
