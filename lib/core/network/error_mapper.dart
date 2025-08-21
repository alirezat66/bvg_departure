import 'package:dio/dio.dart';
import 'package:bvg_departures/core/data/error/app_failure.dart';
AppFailure errorToFailure(DioException err) {
  switch (err.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.sendTimeout:
      return const AppFailure.timeout();
    case DioExceptionType.badResponse:
      final status = err.response?.statusCode;
      if (status == 404) return const AppFailure.notFound();
      if (status == 429) return const AppFailure.rateLimited();
      return AppFailure.network(status: status, message: err.message);
    default:
      return AppFailure.unknown(err.message);
  }
}


