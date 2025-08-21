import 'dart:isolate';

import 'package:bvg_departures/core/data/error/app_failure.dart';
import 'package:bvg_departures/core/data/model/stop_model.dart';
import 'package:bvg_departures/core/data/result/result.dart';
import 'package:bvg_departures/core/network/cache/cache.dart';
import 'package:bvg_departures/core/network/error_mapper.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:dio/dio.dart';

class StopRemoteDataSource {
  StopRemoteDataSource({required Dio dio, required Cache<List<Stop>> cache})
    : _dio = dio,
      _cache = cache;

  final Dio _dio;
  final Cache<List<Stop>> _cache;

  Future<Result<List<Stop>>> search(
    String query, {
    bool forceRefresh = false,
    bool poi = false,
    bool addresses = false,
    int limit = 10,
  }) async {

    final key = 'search:$query:$poi:$addresses:$limit';
    if (!forceRefresh) {
      final cached = _cache.read(key);
      if (cached != null) return Success<List<Stop>>(cached);
    }

    try {
      final result = await _searchInIsolate(
        query: key,
        poi: poi,
        addresses: addresses,
        limit: limit,
      );

      if (result.isSuccess) {
        final stops = result.valueOrNull!;
        _cache.save(key, stops);
        return Success<List<Stop>>(stops);
      } else {
        return Failure<List<Stop>>(result.errorOrNull!);
      }
    } catch (error) {
      return Failure<List<Stop>>(_handleError(error));
    }
  }

  Future<Result<List<Stop>>> _searchInIsolate({
    required String query,
    required bool poi,
    required bool addresses,
    required int limit,
  }) async {
    final receivePort = ReceivePort();

    try {
      await Isolate.spawn(
        _isolateEntryPoint,
        _IsolateData(
          query: query,
          poi: poi,
          addresses: addresses,
          limit: limit,
          dioOptions: _dio.options,
          sendPort: receivePort.sendPort,
        ),
      );

      final result = await receivePort.first as Result<List<Stop>>;
      return result;
    } finally {
      receivePort.close();
    }
  }

  static Future<void> _isolateEntryPoint(_IsolateData data) async {
    try {
      // Create new Dio instance in isolate
      final dio = Dio(data.dioOptions);

      final response = await dio.get(
        '/locations',
        queryParameters: {
          'query': data.query,
          'poi': data.poi,
          'addresses': data.addresses,
          'limit': data.limit,
        },
      );

      final stops = _parseResponseInIsolate(response.data);
      data.sendPort.send(Success<List<Stop>>(stops));
    } catch (error) {
      final failure = _handleErrorInIsolate(error);
      data.sendPort.send(Failure<List<Stop>>(failure));
    }
  }

  static List<Stop> _parseResponseInIsolate(dynamic data) {
    if (data is! List) {
      throw const FormatException('Invalid response format: expected List');
    }

    return data
        .cast<Map<String, dynamic>>()
        .map((json) => StopModel.fromJson(json).toEntity())
        .toList(growable: false);
  }

  static AppFailure _handleErrorInIsolate(Object error) {
    if (error is DioException) {
      return errorToFailure(error);
    }
    return AppFailure.unknown(error.toString());
  }

  AppFailure _handleError(Object error) {
    if (error is DioException) {
      return errorToFailure(error);
    }
    return AppFailure.unknown(error.toString());
  }
}

class _IsolateData {
  final String query;
  final bool poi;
  final bool addresses;
  final int limit;
  final BaseOptions dioOptions;
  final SendPort sendPort;

  const _IsolateData({
    required this.query,
    required this.poi,
    required this.addresses,
    required this.limit,
    required this.dioOptions,
    required this.sendPort,
  });
}
