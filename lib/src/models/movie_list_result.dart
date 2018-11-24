import 'package:json_annotation/json_annotation.dart';

/// This allows the `MovieListResult` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'movie_list_result.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
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

  /// A necessary factory constructor for creating a new MovieListResult instance
  /// from a map. Pass the map to the generated `_$MovieListResultFromJson` constructor.
  /// The constructor is named after the source class, in this case MovieListResult.
  factory MovieListResult.fromJson(Map<String, dynamic> json) => _$MovieListResultFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$MovieListResultToJson`.
  Map<String, dynamic> toJson() => _$MovieListResultToJson(this);
}
