class PodcastEpisodeModel {
  final String title;
  final String dateCreated;
  final String duration;
  final int size;
  final String? description;

  const PodcastEpisodeModel({
    required this.title,
    required this.dateCreated,
    required this.duration,
    required this.size,
    this.description,
  });
}
