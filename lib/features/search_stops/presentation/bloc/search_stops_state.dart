part of 'search_stops_bloc.dart';


enum SearchStatus { idle, loading, loaded, error }

@freezed
abstract class SearchStopsState with _$SearchStopsState {
  const factory SearchStopsState({
    @Default('') String query,
    @Default([]) List<Stop> suggestions,
    AppFailure? failure,
    @Default(SearchStatus.idle) SearchStatus status,
  }) = _SearchStopsState;
}
