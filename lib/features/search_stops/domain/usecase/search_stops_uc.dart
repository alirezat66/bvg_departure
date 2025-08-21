import 'package:bvg_departures/core/data/result/result.dart';
import 'package:bvg_departures/core/domain/usecase.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:bvg_departures/features/search_stops/domain/repository/stop_repository.dart';

class SearchStopUseCase implements UseCase<List<Stop>, String> {
  final StopRepository _repository;
  SearchStopUseCase(StopRepository repository) : _repository = repository;
  @override
  Future<Result<List<Stop>>> call(String query)  {
    return _repository.searchStops(query);
  }
}
