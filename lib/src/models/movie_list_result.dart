import 'package:json_annotation/json_annotation.dart';

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
  int age;

  MovieListResult(
      this.vote_count,
      this.id,
      this.video,
      this.vote_average,
      this.title,
      this.popularity,
      this.poster_path,
      this.original_language,
      this.original_title,
      this.genre_ids,
      this.backdrop_path,
      this.adult,
      this.overview,
      this.release_date,
      this.age);

  factory MovieListResult.fromJson(Map<String, dynamic> json) => _$MovieListResultFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListResultToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieListResult _$MovieListResultFromJson(Map<String, dynamic> json) {
  return MovieListResult(
      json['vote_count'] as int,
      json['id'] as int,
      json['video'] as bool,
      (json['vote_average'] as num)?.toDouble(),
      json['title'] as String,
      (json['popularity'] as num)?.toDouble(),
      json['poster_path'] as String,
      json['original_language'] as String,
      json['original_title'] as String,
      (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
      json['backdrop_path'] as String,
      json['adult'] as bool,
      json['overview'] as String,
      json['release_date'] as String,
      json['age'] as int);
}

Map<String, dynamic> _$MovieListResultToJson(MovieListResult instance) => <String, dynamic>{
      'vote_count': instance.vote_count,
      'id': instance.id,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'title': instance.title,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'genre_ids': instance.genre_ids,
      'backdrop_path': instance.backdrop_path,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.release_date,
      'age': instance.age
    };
