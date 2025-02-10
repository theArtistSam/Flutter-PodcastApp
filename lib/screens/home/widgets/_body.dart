part of '../home.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.background, // Customize color
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Image.asset(
            AppImages.appLogo,
            height: 42,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              AppIcons.search,
            ), // Change to desired icon
            onPressed: () {},
          ),
          const SizedBox(
            width: 30,
          ),
          IconButton(
            icon: SvgPicture.asset(
              AppIcons.menu,
            ), // Change to desired icon
            onPressed: () {},
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 191,
              autoPlay: true,
              // enlargeCenterPage: true,
              viewportFraction: .8,
            ),
            items: podcastCardItems.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    child: _PodcastCard(
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
          )
        ],
      ),
    );
  }
}
