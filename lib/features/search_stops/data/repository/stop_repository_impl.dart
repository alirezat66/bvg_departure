import 'package:bvg_departures/core/data/error/app_failure.dart';
import 'package:bvg_departures/core/data/result/result.dart';
import 'package:bvg_departures/features/search_stops/data/data_source/stop_remote_data_source.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:bvg_departures/features/search_stops/domain/repository/stop_repository.dart';

class StopRepositoryImpl implements StopRepository {
  final StopRemoteDataSource _remote;
  StopRepositoryImpl(StopRemoteDataSource remote) : _remote = remote;
  @override
  Future<Result<List<Stop>>> searchStops(String query) {
    final trimmedQuery = query.trim();
    if (trimmedQuery.isEmpty) {
      return Future.value(const Success<List<Stop>>([]));
    } else {
      try {
        return _remote.search(
          trimmedQuery,
          forceRefresh: false,
          poi: false,
          addresses: false,
          limit: 10,
        );
      } catch (error) {
        return Future.value(
          Failure<List<Stop>>(AppFailure.parse(error.toString())),
        );
      }
    }
  }
}
