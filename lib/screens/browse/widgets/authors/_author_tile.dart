part of '../../browse.dart';

class _AuthorTile extends StatelessWidget {
  final String name;
  final int totalPodcasts;
  final int totalMinutes;
  final String img;
  final Color color;
  const _AuthorTile({
    required this.name,
    required this.totalPodcasts,
    required this.totalMinutes,
    required this.img,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Image.asset(img),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    name,
                    style: AppTypography.h2m(),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Podcasts: $totalPodcasts $totalMinutes",
                    style: AppTypography.b2(),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
