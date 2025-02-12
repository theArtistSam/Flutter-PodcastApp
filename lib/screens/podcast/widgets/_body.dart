part of '../podcast.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppTheme.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Customize color
        elevation: 0, // Remove shadow
        leading: IconButton(
          icon: SvgPicture.asset(AppIcons.arrowLeft),
          onPressed: () => ''.pop(context),
        ),
        centerTitle: true, // Centers the text
        actions: [
          IconButton(
            icon: SvgPicture.asset(AppIcons.search),
            onPressed: () {},
          ),
          const SizedBox(width: 30),
          IconButton(
            icon: SvgPicture.asset(AppIcons.menu),
            onPressed: () {},
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                AppImages.musicBg,
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppImages.author1,
                    ),
                    Image.asset(
                      AppImages.author2,
                    )
                  ],
                ),
              ),
              SafeArea(
                child: Center(
                  child: SizedBox(
                    width: w * .75,
                    child: Column(
                      children: [
                        Text(
                          "About flow and our motiations",
                          textAlign: TextAlign.center,
                          style: AppTypography.h2m(),
                        ),
                        const SizedBox(height: 26),
                        Text(
                          "John Doe & Amanda Smith",
                          style: AppTypography.b2(color: AppTheme.textGrey),
                        ),
                        const SizedBox(height: 26),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                AppIcons.rotateBackward,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            AppIconButton(
                              radius: 50,
                              iH: 19,
                              icon: AppIcons.play,
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                AppIcons.rotateForward,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          // * Rest of the body starts from here
          // Slider
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 3,
                activeTrackColor: AppTheme.orange,
                inactiveTrackColor: AppTheme.borderColor,
                thumbColor: Colors.white,
                overlayColor: AppTheme.orange,
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 8,
                ),
              ),
              child: Slider(value: .5, onChanged: (onChanged) {}),
            ),
          ),
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
                          return _PodcastEpisodeTile(
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
