import 'package:bvg_departures/core/data/result/result.dart';
import 'package:bvg_departures/core/domain/usecase.dart';
import 'package:bvg_departures/features/departures/domain/entities/departure.dart';
import 'package:bvg_departures/features/departures/domain/repository/departure_repository.dart';

class GetDeparturesUc implements UseCase<List<Departure>, String> {
  final DepartureRepository repository;

  const GetDeparturesUc(this.repository);

  @override
  Future<Result<List<Departure>>> call(String stopId) async {
    return await repository.getDepartures(stopId);
  }
}
