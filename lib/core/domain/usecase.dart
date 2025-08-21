import 'package:bvg_departures/core/data/result/result.dart';

abstract class UseCase<R, P> {
  const UseCase();
  Future<Result<R>> call(P params);
}

class NoParams {
  const NoParams();
}

abstract class StreamUseCase<R, P> {
  const StreamUseCase();
  Stream<Result<R>> call(P params);
}
