part of '../browse.dart';

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: const AppAppbar(),
      endDrawer: const AppDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Text(
                  "Browse",
                  style: AppTypography.h1b(),
                ),
                const SizedBox(height: 30),
                const AppSearchfield(),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
              padding: const EdgeInsets.all(30),
              scrollDirection: Axis.horizontal,
              itemCount: categoryItems.length,
              separatorBuilder: (context, index) {
                return const SizedBox(width: 20);
              },
              itemBuilder: (context, index) {
                final CategoryModel item = categoryItems[index];
                return _Category(
                  title: item.title,
                  icon: item.icon,
                  isSelected: selectedIndex == index,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                );
              },
            ),
          ),
          switch (selectedIndex) {
            0 => const _CategorySection(),
            1 => const _TopicSection(),
            2 => const _AuthorSection(),
            _ => const SizedBox.shrink(),
          }
        ],
      ),
    );
  }
}
