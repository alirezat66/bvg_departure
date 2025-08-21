import 'package:bvg_departures/core/data/result/result.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';

abstract class StopRepository {
  Future<Result<List<Stop>>> searchStops(String query);
}
