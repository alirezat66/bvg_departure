import 'package:bvg_departures/core/data/error/app_failure.dart';
import 'package:bvg_departures/core/presentation/bloc/app_bloc.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:bvg_departures/features/search_stops/domain/usecase/search_stops_uc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

part 'search_stops_event.dart';
part 'search_stops_state.dart';
part 'search_stops_bloc.freezed.dart';

class SearchStopsBloc extends Bloc<SearchStopsEvent, SearchStopsState> {
  final SearchStopUseCase _searchStopsUseCase;
  SearchStopsBloc(SearchStopUseCase searchStopsUseCase)
    : _searchStopsUseCase = searchStopsUseCase,
      super(const SearchStopsState()) {
    on<SearchStopsEvent>(
      (event, emit) =>
          event.map(queryChanged: (e) => _onQueryChanged(e.query, emit)),
      transformer: debounceRestartable(const Duration(milliseconds: 350)),
    );
  }

  Future<void> _onQueryChanged(
    String query,
    Emitter<SearchStopsState> emit,
  ) async {
    final q = query.trim();
    if (q.isEmpty) {
      emit(const SearchStopsState());
      return;
    }
    emit(
      SearchStopsState(
        query: q,
        status: SearchStatus.loading,
        suggestions: [],
        failure: null,
      ),
    );
    final res = await _searchStopsUseCase(q);
    res.fold(
      (list) => emit(
        SearchStopsState(
          query: q,
          suggestions: list,
          status: SearchStatus.loaded,
        ),
      ),
      (err) => emit(
        SearchStopsState(
          query: q,
          failure: err is AppFailure ? err : AppFailure.unknown(err.toString()),
          status: SearchStatus.error,
        ),
      ),
    );
  }
}

EventTransformer<E> debounceRestartable<E>(Duration d) =>
    (events, mapper) => events.debounce(d).switchMap(mapper);
