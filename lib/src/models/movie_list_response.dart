import 'package:json_annotation/json_annotation.dart';
import 'movie_list_result.dart';

/// This allows the `MovieListResponse` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'movie_list_response.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()

class MovieListResponse {
  int page;
  int total_results;
  int total_pages;
  List<MovieListResult> results = [];

  MovieListResponse(this.page, this.total_results, this.total_pages, this.results);

  /// A necessary factory constructor for creating a new MovieListResponse instance
  /// from a map. Pass the map to the generated `_$MovieListResponseFromJson` constructor.
  /// The constructor is named after the source class, in this case MovieListResponse.
  factory MovieListResponse.fromJson(Map<String, dynamic> json) => _$MovieListResponseFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$MovieListResponseToJson`.
  Map<String, dynamic> toJson() => _$MovieListResponseToJson(this);
}