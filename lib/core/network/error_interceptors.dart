import 'package:bvg_departures/core/data/error/app_failure.dart';
import 'package:bvg_departures/core/network/error_mapper.dart';
import 'package:dio/dio.dart';

class ErrorMappingInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final AppFailure f = errorToFailure(err);
    handler.reject(err.copyWith(error: f));
  }
}
