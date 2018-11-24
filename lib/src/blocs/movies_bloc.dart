import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/movie_list_response.dart';

class MoviesBloc {
  final repository = Repository();
  final moviesFetcher = PublishSubject<MovieListResponse>();

  Observable<MovieListResponse> get allMovies => moviesFetcher.stream;

  fetchAllMovies() async {
    MovieListResponse itemModel = await repository.fetchAllMovies();
    moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    moviesFetcher.close();
  }
}

final bloc = MoviesBloc();