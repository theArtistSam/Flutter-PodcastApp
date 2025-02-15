part of '../topic.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppTheme.background,
      appBar: const AppAppbar(
        appbarColor: Colors.transparent,
        isBack: true,
      ),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.85), // Black with 50% opacity
              BlendMode.darken, // Darken blend mode for overlay effect
            ),
            child: Image.asset(
              AppImages.topicBg,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    Text(
                      "Positive psychology",
                      style: AppTypography.h1b(),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.profile,
                          height: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "Authors: 124",
                          style: AppTypography.b2(color: AppTheme.textGrey),
                        ),
                        const SizedBox(width: 30),
                        SvgPicture.asset(
                          AppIcons.mic,
                          height: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "Podcasts: 7 286",
                          style: AppTypography.b2(color: AppTheme.textGrey),
                        )
                      ],
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  spacing: 24,
                  children: [
                    AppButton(
                      width: 155,
                      title: "Subscribe",
                      onTap: () {},
                    ),
                    Text(
                      "+4.7K followers",
                      style: AppTypography.b2m(),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              TabList(
                items: const ["Recent", "Authors", "Popular"],
                onPressed: (index) {},
                selectedIndex: 0,
              ),
              ListView.separated(
                padding: const EdgeInsets.fromLTRB(30, 25, 30, 0),
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
          )
        ],
      ),
    );
  }
}
