import 'dart:ui';

class AuthorTileModel {
  final String name;
  final int totalPodcasts;
  final int totalMinutes;
  final String img;
  final Color color;
  const AuthorTileModel({
    required this.name,
    required this.totalPodcasts,
    required this.totalMinutes,
    required this.img,
    required this.color,
  });
}
