import 'package:bvg_departures/core/data/result/result.dart';
import 'package:bvg_departures/core/network/error_mapper.dart';
import 'package:bvg_departures/features/departures/data/models/departure_response_model.dart';
import 'package:dio/dio.dart';

abstract class DepartureRemoteDataSource {
  Future<Result<DepartureResponseModel>> getDepartures(String stopId);
}

class DepartureRemoteDataSourceImpl implements DepartureRemoteDataSource {
  final Dio dio;

  const DepartureRemoteDataSourceImpl(this.dio);

  @override
  Future<Result<DepartureResponseModel>> getDepartures(String stopId) async {
    try {
      final response = await dio.get('/stops/$stopId/departures');
      final data = response.data as Map<String, dynamic>;
      final departureResponse = DepartureResponseModel.fromJson(data);
      return Success<DepartureResponseModel>(departureResponse);
    } on DioException catch (e) {
      final failure = errorToFailure(e);
      return Failure<DepartureResponseModel>(failure);
    }
  }
}
