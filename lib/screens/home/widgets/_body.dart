part of '../home.dart';

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  int itemsIndex = 0;
  int authorsIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      endDrawer: const AppDrawer(),
      appBar: const AppAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 190,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: .9,
              ),
              items: podcastCardItems.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: PodcastCard(
                        title: item.title,
                        image: item.image,
                        author: item.author,
                        dateCreated: item.dateCreated,
                        length: item.length,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 38),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Text(
                "Listen Podcast",
                style: AppTypography.h2m(),
              ),
            ),
            const SizedBox(height: 24),
            _TablistView(
              items: podcastItems,
              onPressed: (index) {
                setState(() {
                  itemsIndex = index;
                });
              },
              selectedIndex: itemsIndex,
            ),
            SizedBox(
              height: 365,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 33,
                  vertical: 40,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final PodcastCardModel item = podcastCardItems[index];
                  return GestureDetector(
                    onTap: () => AppRoutes.podcast.push(context),
                    child: _PodcastTile(
                      title: item.title,
                      image: item.image,
                      author: item.author,
                      length: item.length,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20);
                },
                itemCount: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Text(
                "Podcasts authors",
                style: AppTypography.h2m(),
              ),
            ),
            const SizedBox(height: 24),
            _TablistView(
              items: authorsData,
              onPressed: (index) {
                setState(() {
                  authorsIndex = index;
                });
              },
              selectedIndex: authorsIndex,
            ),
            SizedBox(
              height: 208,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 33,
                  vertical: 40,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final PodcastAuthorModel author = podcastAuthors[index];
                  return _PodcastAuthorTile(
                    image: author.image,
                    author: author.author,
                    totalPodcasts: author.totalPodcasts,
                    totalFollowers: author.totalFollowers,
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 15);
                },
                itemCount: podcastAuthors.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
