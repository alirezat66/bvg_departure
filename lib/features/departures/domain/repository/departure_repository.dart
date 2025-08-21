import 'package:bvg_departures/core/data/result/result.dart';
import 'package:bvg_departures/features/departures/domain/entities/departure.dart';

abstract class DepartureRepository {
  Future<Result<List<Departure>>> getDepartures(String stopId);
}
