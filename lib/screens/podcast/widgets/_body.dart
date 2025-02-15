part of '../podcast.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      extendBodyBehindAppBar: true,
      appBar: const AppAppbar(
        appbarColor: Colors.transparent,
        isBack: true,
      ),
      body: Column(
        children: [
          const _Header(),
          const _Slider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        AppIconButton(
                          icon: AppIcons.like,
                          iH: 16,
                          iC: AppTheme.green,
                          color: AppTheme.greenAccent,
                          isShadow: false,
                          onTap: () {},
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "37501",
                          style: AppTypography.l1(),
                        )
                      ],
                    ),
                    Text(
                      "24:15:05",
                      style: AppTypography.b2m(),
                    ),
                    Row(
                      children: [
                        Text(
                          "37501",
                          style: AppTypography.l1(
                            color: AppTheme.textGrey,
                          ),
                        ),
                        const SizedBox(width: 10),
                        AppIconButton(
                          iH: 16,
                          icon: AppIcons.dislike,
                          iC: AppTheme.textGrey,
                          color: AppTheme.accent,
                          isShadow: false,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Divider(
                  color: AppTheme.borderColor,
                  height: 0,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 25),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          AppIconButton(
                            icon: AppIcons.soundwave,
                            color: AppTheme.accent,
                            isShadow: false,
                            onTap: () {},
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Episode 2",
                            style: AppTypography.l1(),
                          ),
                          const SizedBox(width: 30),
                          AppIconButton(
                            icon: AppIcons.download,
                            color: AppTheme.accent,
                            isShadow: false,
                            onTap: () {},
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "50 mb",
                            style: AppTypography.l1(),
                          ),
                          const Spacer(),
                          AppIconButton(
                            icon: AppIcons.menuDots,
                            radius: 16,
                            color: Colors.transparent,
                            isShadow: false,
                            onTap: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Text(
                        "The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. ",
                        style: AppTypography.l1(),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        "Episodes (10)",
                        style: AppTypography.b1m(),
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        itemCount: podcastEpisodes.length,
                        itemBuilder: (context, index) {
                          final PodcastEpisodeModel item =
                              podcastEpisodes[index];
                          return PodcastEpisodeTile(
                            title: item.title,
                            dateCreated: item.dateCreated,
                            duration: item.duration,
                            size: item.size,
                          );
                        },
                        separatorBuilder: (context, item) {
                          return const SizedBox(height: 15);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
