import 'package:bvg_departures/core/network/cache/cache.dart';
import 'package:bvg_departures/core/network/cache/memory_cache.dart';
import 'package:bvg_departures/core/network/dio_client.dart';
import 'package:bvg_departures/features/search_stops/data/data_source/stop_remote_data_source.dart';
import 'package:bvg_departures/features/search_stops/data/repository/stop_repository_impl.dart';
import 'package:bvg_departures/features/search_stops/domain/entity/stop.dart';
import 'package:bvg_departures/features/search_stops/domain/repository/stop_repository.dart';
import 'package:bvg_departures/features/search_stops/domain/usecase/search_stops_uc.dart';
import 'package:bvg_departures/features/search_stops/presentation/bloc/search_stops_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  final dioClient = DioClient('https://api.example.com');
  getIt.registerSingleton<DioClient>(dioClient);

  _setupSearchStops();
}

void _setupSearchStops() {
  getIt.registerSingleton<Cache<List<Stop>>>(
    MemoryCache(ttl: Duration(minutes: 30)),
  );
  getIt.registerLazySingleton<StopRemoteDataSource>(
    () => StopRemoteDataSource(
      dio: getIt<DioClient>().dio,
      cache: getIt<Cache<List<Stop>>>(),
    ),
  );

  getIt.registerLazySingleton<StopRepository>(
    () => StopRepositoryImpl(getIt<StopRemoteDataSource>()),
  );
  getIt.registerFactory<SearchStopUseCase>(() => SearchStopUseCase(getIt()));

  getIt.registerFactory<SearchStopsBloc>(
    () => SearchStopsBloc(getIt<SearchStopUseCase>()),
  );
}
