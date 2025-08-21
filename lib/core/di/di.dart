import 'package:bvg_departures/core/network/dio_client.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  final dioClient = DioClient('https://api.example.com');
  getIt.registerSingleton<DioClient>(dioClient);
}
