import 'package:podcast/configs/app_images.dart';
import 'package:podcast/screens/home/models/podcast_author_model.dart';

List<String> authorsData = [
  "Recent",
  "Most Podcasts",
  "Most followed",
];

final List<PodcastAuthorModel> podcastAuthors = [
  PodcastAuthorModel(
    image: AppImages.avatar,
    author: "John Doe",
    totalPodcasts: 7,
    totalFollowers: 250,
  ),
  PodcastAuthorModel(
    image: AppImages.avatar,
    author: "Jane Smith",
    totalPodcasts: 7,
    totalFollowers: 250,
  ),
  PodcastAuthorModel(
    image: AppImages.avatar,
    author: "Elon Musk",
    totalPodcasts: 7,
    totalFollowers: 250,
  ),
  PodcastAuthorModel(
    image: AppImages.avatar,
    author: "Tony Robbins",
    totalPodcasts: 7,
    totalFollowers: 250,
  ),
  PodcastAuthorModel(
    image: AppImages.avatar,
    author: "David Attenborough",
    totalPodcasts: 7,
    totalFollowers: 250,
  ),
];
