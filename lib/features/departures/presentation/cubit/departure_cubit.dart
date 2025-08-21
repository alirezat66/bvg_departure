import 'package:bvg_departures/core/presentation/bloc/app_bloc.dart';
import 'package:bvg_departures/features/departures/domain/usecase/get_departure_uc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bvg_departures/core/data/error/app_failure.dart';
import 'package:bvg_departures/features/departures/domain/entities/departure.dart';

part 'departure_state.dart';
part 'departure_cubit.freezed.dart';

class DepartureCubit extends Cubit<DepartureState> {
  final GetDeparturesUc _getDeparturesUc;
  DepartureCubit(GetDeparturesUc getDepartureUc)
    : _getDeparturesUc = getDepartureUc,
      super(const DepartureState());

  Future<void> loadDepartures(String stopId) async {
    emit(state.copyWith(status: DepartureStatus.loading));

    final result = await _getDeparturesUc(stopId);

    result.fold(
      (departures) => emit(
        state.copyWith(
          departures: departures,
          status: DepartureStatus.loaded,
          failure: null,
        ),
      ),
      (error) => emit(
        state.copyWith(
          failure: error is AppFailure
              ? error
              : AppFailure.unknown(error.toString()),
          status: DepartureStatus.error,
        ),
      ),
    );
  }

  Future<void> refreshDepartures(String stopId) async {
    await loadDepartures(stopId);
  }
}
