class PodcastCardModel {
  final String title;
  final String image;
  final String author;
  final String dateCreated;
  final String length;

  const PodcastCardModel({
    required this.title,
    required this.image,
    required this.author,
    this.dateCreated = "23.05.2019",
    required this.length,
  });
}
