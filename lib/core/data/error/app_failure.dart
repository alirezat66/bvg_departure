import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';
@freezed
class AppFailure with _$AppFailure {
  const factory AppFailure.network({int? status, String? message}) =
      NetworkAppFailure;
  const factory AppFailure.timeout() = TimeoutAppFailure;
  const factory AppFailure.notFound() = NotFoundAppFailure;
  const factory AppFailure.rateLimited({Duration? retryAfter}) =
      RateLimitedAppFailure;
  const factory AppFailure.parse([String? message]) = ParseAppFailure;
  const factory AppFailure.cache([String? message]) = CacheAppFailure;
  const factory AppFailure.unknown([String? message]) = UnknownAppFailure;
}
