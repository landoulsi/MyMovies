import 'dart:async';
import 'movie_api_provider.dart';
import '../models/movie_list_response.dart';
import '../models/movie_details_response.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<MovieListResponse> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<MovieDetailsResponse> fetchTrailers(int movieId) => moviesApiProvider.fetchTrailer(movieId);
}
