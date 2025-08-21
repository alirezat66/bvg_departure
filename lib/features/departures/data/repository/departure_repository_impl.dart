import 'package:bvg_departures/core/data/error/app_failure.dart';
import 'package:bvg_departures/core/data/result/result.dart';
import 'package:bvg_departures/features/departures/data/data_source/departure_remote_data_source.dart';
import 'package:bvg_departures/features/departures/domain/entities/departure.dart';
import 'package:bvg_departures/features/departures/domain/repository/departure_repository.dart';

class DepartureRepositoryImpl implements DepartureRepository {
  final DepartureRemoteDataSource remoteDataSource;

  const DepartureRepositoryImpl(this.remoteDataSource);

  @override
  Future<Result<List<Departure>>> getDepartures(String stopId) async {
    try {
      final result = await remoteDataSource.getDepartures(stopId);
      return result.map(
        (data) => data.departures
            .map((d) => d.toEntity())
            .where((d) => d != null)
            .cast<Departure>()
            .toList(),
      );
    } catch (e) {
      return Failure<List<Departure>>(
        AppFailure.parse('departure parse error: $e'),
      );
    }
  }
}
