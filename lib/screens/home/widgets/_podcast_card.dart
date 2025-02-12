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
      width: double.infinity,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              height: 190,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                              child: Image.asset(
                                AppImages.avatar,
                                height: 16,
                              ),
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
                      radius: 51,
                      iH: 19,
                      icon: AppIcons.pause,
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
