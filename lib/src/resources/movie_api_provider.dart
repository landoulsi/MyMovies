import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/movie_list_response.dart';
import '../models/movie_details_response.dart';

class MovieApiProvider {
  Client client = Client();
  final apiKey = '802b2c4b88ea1183e50e6b285a27696e';
  final baseUrl = "http://api.themoviedb.org/3/movie";

  Future<MovieListResponse> fetchMovieList() async {
    final response = await client.get("$baseUrl/popular?api_key=$apiKey");
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return MovieListResponse.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<MovieDetailsResponse> fetchTrailer(int movieId) async {
    final response = await client.get("$baseUrl/$movieId/videos?api_key=$apiKey");

    if (response.statusCode == 200) {
      return MovieDetailsResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load trailers');
    }
  }
}
