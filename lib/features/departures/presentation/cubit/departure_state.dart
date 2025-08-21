
part of 'departure_cubit.dart';

enum DepartureStatus { loading, loaded, error }

@freezed
abstract class DepartureState with _$DepartureState {
  const factory DepartureState({
    @Default([]) List<Departure> departures,
    AppFailure? failure,
    @Default(DepartureStatus.loading) DepartureStatus status,
  }) = _DepartureState;
}
