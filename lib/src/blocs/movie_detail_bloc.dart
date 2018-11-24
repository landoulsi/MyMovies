import 'dart:async';

import 'package:rxdart/rxdart.dart';
import '../models/trailer_model.dart';
import '../resources/repository.dart';

class MovieDetailBloc {
  final repository = Repository();
  final movieId = PublishSubject<int>();
  final trailers = BehaviorSubject<Future<TrailerModel>>();

  Function(int) get fetchTrailersById => movieId.sink.add;
  Observable<Future<TrailerModel>> get movieTrailers => trailers.stream;

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
      (Future<TrailerModel> trailer, int id, int index) {
        print(index);
        trailer = repository.fetchTrailers(id);
        return trailer;
      },
    );
  }
}
