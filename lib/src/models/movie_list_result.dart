import 'package:json_annotation/json_annotation.dart';

part 'movie_list_result.g.dart';

@JsonSerializable()
class MovieListResult {
  int vote_count;
  int id;
  bool video;
  double vote_average;
  String title;
  double popularity;
  String poster_path;
  String original_language;
  String original_title;
  List<int> genre_ids = [];
  String backdrop_path;
  bool adult;
  String overview;
  String release_date;

  MovieListResult(this.vote_count, this.id, this.video, this.vote_average, this.title,
      this.popularity, this.poster_path, this.original_language, this.original_title,
      this.genre_ids, this.backdrop_path, this.adult, this.overview, this.release_date);

  factory MovieListResult.fromJson(Map<String, dynamic> json) => _$MovieListResultFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListResultToJson(this);
}
