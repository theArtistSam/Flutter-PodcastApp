part of '../home.dart';

class _PodcastCard extends StatelessWidget {
  final String title;
  final String image;
  final String author;
  final String dateCreated;
  final String length;

  const _PodcastCard({
    required this.title,
    required this.image,
    required this.author,
    required this.dateCreated,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 191,
      width: 309,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppTheme.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Text(
                      "NEW",
                      style: AppTypography.l1m(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: AppTypography.h2m(),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              dateCreated,
                              style: AppTypography.l1(
                                color: AppTheme.textGrey,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            SvgPicture.asset(
                              AppIcons.clock,
                              color: AppTheme.textGrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              length,
                              style: AppTypography.l1(
                                color: AppTheme.textGrey,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(AppImages.avatar),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              author,
                              style: AppTypography.l1(),
                            )
                          ],
                        )
                      ],
                    ),
                    AppIconButton(
                      icon: AppIcons.play,
                      onTap: () {},
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
