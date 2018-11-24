import 'package:json_annotation/json_annotation.dart';
import 'movie_list_result.dart';

part 'movie_list_response.g.dart';

@JsonSerializable()
class MovieListResponse {
  int page;
  int total_results;
  int total_pages;
  List<MovieListResult> results = [];

  MovieListResponse(this.page, this.total_results, this.total_pages, this.results);

  factory MovieListResponse.fromJson(Map<String, dynamic> json) => _$MovieListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListResponseToJson(this);
}