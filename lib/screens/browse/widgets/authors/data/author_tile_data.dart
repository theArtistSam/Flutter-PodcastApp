import 'dart:ui';

import 'package:podcast/configs/app_images.dart';
import 'package:podcast/screens/browse/widgets/authors/model/author_tile_model.dart';

List<AuthorTileModel> authors = [
  const AuthorTileModel(
    name: "J.K. Rowling",
    totalPodcasts: 7,
    totalMinutes: 286,
    img: AppImages.authorImg1,
    color: Color(0xffAF47D2),
  ),
  const AuthorTileModel(
    name: "George Martin",
    totalPodcasts: 5,
    totalMinutes: 210,
    img: AppImages.authorImg2,
    color: Color(0xffFF6F61),
  ),
  const AuthorTileModel(
    name: "Stephen King",
    totalPodcasts: 8,
    totalMinutes: 320,
    img: AppImages.authorImg3,
    color: Color(0xff4CAF50),
  ),
  const AuthorTileModel(
    name: "Agatha Christie",
    totalPodcasts: 6,
    totalMinutes: 250,
    img: AppImages.authorImg1,
    color: Color.fromARGB(255, 255, 179, 0),
  ),
  const AuthorTileModel(
    name: "J.R.R. Tolkien",
    totalPodcasts: 9,
    totalMinutes: 400,
    img: AppImages.authorImg2,
    color: Color(0xff2196F3),
  ),
];
