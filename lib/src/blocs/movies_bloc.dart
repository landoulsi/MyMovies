import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/item_model.dart';

class MoviesBloc {
  final repository = Repository();
  final moviesFetcher = PublishSubject<ItemModel>();

  Observable<ItemModel> get allMovies => moviesFetcher.stream;

  fetchAllMovies() async {
    ItemModel itemModel = await repository.fetchAllMovies();
    moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    moviesFetcher.close();
  }
}

final bloc = MoviesBloc();