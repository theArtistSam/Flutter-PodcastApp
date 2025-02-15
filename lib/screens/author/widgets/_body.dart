part of '../author.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _Header(),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Column(
                children: [
                  Text(
                    "Mary Beth Keane is an American writer of Irish parentage. She is the author of The Walking People, Fever,and Ask Again, Yes. In 2011 she was named one of the National...",
                    style: AppTypography.l1(
                      color: AppTheme.textGrey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Read More",
                        style: AppTypography.b2m(color: AppTheme.textGrey),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppIcons.smallArrowDown,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Row(
                      spacing: 24,
                      children: [
                        AppButton(
                          width: 103,
                          title: "Follow",
                          onTap: () {},
                        ),
                        Text(
                          "+1.3K followers",
                          style: AppTypography.b2m(),
                        )
                      ],
                    ),
                  ),
                  TabList(
                    padding: 0,
                    items: const ["Recent", "Popular", "As guest"],
                    onPressed: (index) {},
                    selectedIndex: 0,
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 25),
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
            ),
          ],
        ),
      ),
    );
  }
}
