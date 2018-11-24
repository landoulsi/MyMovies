import 'dart:async';

import 'package:rxdart/rxdart.dart';
import '../models/movie_details_response.dart';
import '../resources/repository.dart';

class MovieDetailBloc {
  final repository = Repository();
  final movieId = PublishSubject<int>();
  final trailers = BehaviorSubject<Future<MovieDetailsResponse>>();

  Function(int) get fetchTrailersById => movieId.sink.add;
  Observable<Future<MovieDetailsResponse>> get movieTrailers => trailers.stream;

  MovieDetailBloc() {
    movieId.stream.transform(itemTransformer()).pipe(trailers);
  }

  dispose() async {
    movieId.close();
    await trailers.drain();
    trailers.close();
  }

  itemTransformer() {
    return ScanStreamTransformer(
      (Future<MovieDetailsResponse> trailer, int id, int index) {
        print(index);
        trailer = repository.fetchTrailers(id);
        return trailer;
      },
    );
  }
}
