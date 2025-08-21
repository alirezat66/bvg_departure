part of 'search_stops_bloc.dart';

@freezed
abstract class SearchStopsEvent with _$SearchStopsEvent {
  const factory SearchStopsEvent.queryChanged(String query) = _QueryChanged;
}
