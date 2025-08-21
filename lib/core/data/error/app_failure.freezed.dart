// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppFailure()';
}


}

/// @nodoc
class $AppFailureCopyWith<$Res>  {
$AppFailureCopyWith(AppFailure _, $Res Function(AppFailure) __);
}


/// Adds pattern-matching-related methods to [AppFailure].
extension AppFailurePatterns on AppFailure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NetworkAppFailure value)?  network,TResult Function( TimeoutAppFailure value)?  timeout,TResult Function( NotFoundAppFailure value)?  notFound,TResult Function( RateLimitedAppFailure value)?  rateLimited,TResult Function( ParseAppFailure value)?  parse,TResult Function( CacheAppFailure value)?  cache,TResult Function( UnknownAppFailure value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NetworkAppFailure() when network != null:
return network(_that);case TimeoutAppFailure() when timeout != null:
return timeout(_that);case NotFoundAppFailure() when notFound != null:
return notFound(_that);case RateLimitedAppFailure() when rateLimited != null:
return rateLimited(_that);case ParseAppFailure() when parse != null:
return parse(_that);case CacheAppFailure() when cache != null:
return cache(_that);case UnknownAppFailure() when unknown != null:
return unknown(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NetworkAppFailure value)  network,required TResult Function( TimeoutAppFailure value)  timeout,required TResult Function( NotFoundAppFailure value)  notFound,required TResult Function( RateLimitedAppFailure value)  rateLimited,required TResult Function( ParseAppFailure value)  parse,required TResult Function( CacheAppFailure value)  cache,required TResult Function( UnknownAppFailure value)  unknown,}){
final _that = this;
switch (_that) {
case NetworkAppFailure():
return network(_that);case TimeoutAppFailure():
return timeout(_that);case NotFoundAppFailure():
return notFound(_that);case RateLimitedAppFailure():
return rateLimited(_that);case ParseAppFailure():
return parse(_that);case CacheAppFailure():
return cache(_that);case UnknownAppFailure():
return unknown(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NetworkAppFailure value)?  network,TResult? Function( TimeoutAppFailure value)?  timeout,TResult? Function( NotFoundAppFailure value)?  notFound,TResult? Function( RateLimitedAppFailure value)?  rateLimited,TResult? Function( ParseAppFailure value)?  parse,TResult? Function( CacheAppFailure value)?  cache,TResult? Function( UnknownAppFailure value)?  unknown,}){
final _that = this;
switch (_that) {
case NetworkAppFailure() when network != null:
return network(_that);case TimeoutAppFailure() when timeout != null:
return timeout(_that);case NotFoundAppFailure() when notFound != null:
return notFound(_that);case RateLimitedAppFailure() when rateLimited != null:
return rateLimited(_that);case ParseAppFailure() when parse != null:
return parse(_that);case CacheAppFailure() when cache != null:
return cache(_that);case UnknownAppFailure() when unknown != null:
return unknown(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? status,  String? message)?  network,TResult Function()?  timeout,TResult Function()?  notFound,TResult Function( Duration? retryAfter)?  rateLimited,TResult Function( String? message)?  parse,TResult Function( String? message)?  cache,TResult Function( String? message)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NetworkAppFailure() when network != null:
return network(_that.status,_that.message);case TimeoutAppFailure() when timeout != null:
return timeout();case NotFoundAppFailure() when notFound != null:
return notFound();case RateLimitedAppFailure() when rateLimited != null:
return rateLimited(_that.retryAfter);case ParseAppFailure() when parse != null:
return parse(_that.message);case CacheAppFailure() when cache != null:
return cache(_that.message);case UnknownAppFailure() when unknown != null:
return unknown(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? status,  String? message)  network,required TResult Function()  timeout,required TResult Function()  notFound,required TResult Function( Duration? retryAfter)  rateLimited,required TResult Function( String? message)  parse,required TResult Function( String? message)  cache,required TResult Function( String? message)  unknown,}) {final _that = this;
switch (_that) {
case NetworkAppFailure():
return network(_that.status,_that.message);case TimeoutAppFailure():
return timeout();case NotFoundAppFailure():
return notFound();case RateLimitedAppFailure():
return rateLimited(_that.retryAfter);case ParseAppFailure():
return parse(_that.message);case CacheAppFailure():
return cache(_that.message);case UnknownAppFailure():
return unknown(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? status,  String? message)?  network,TResult? Function()?  timeout,TResult? Function()?  notFound,TResult? Function( Duration? retryAfter)?  rateLimited,TResult? Function( String? message)?  parse,TResult? Function( String? message)?  cache,TResult? Function( String? message)?  unknown,}) {final _that = this;
switch (_that) {
case NetworkAppFailure() when network != null:
return network(_that.status,_that.message);case TimeoutAppFailure() when timeout != null:
return timeout();case NotFoundAppFailure() when notFound != null:
return notFound();case RateLimitedAppFailure() when rateLimited != null:
return rateLimited(_that.retryAfter);case ParseAppFailure() when parse != null:
return parse(_that.message);case CacheAppFailure() when cache != null:
return cache(_that.message);case UnknownAppFailure() when unknown != null:
return unknown(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class NetworkAppFailure implements AppFailure {
  const NetworkAppFailure({this.status, this.message});
  

 final  int? status;
 final  String? message;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkAppFailureCopyWith<NetworkAppFailure> get copyWith => _$NetworkAppFailureCopyWithImpl<NetworkAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkAppFailure&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'AppFailure.network(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $NetworkAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $NetworkAppFailureCopyWith(NetworkAppFailure value, $Res Function(NetworkAppFailure) _then) = _$NetworkAppFailureCopyWithImpl;
@useResult
$Res call({
 int? status, String? message
});




}
/// @nodoc
class _$NetworkAppFailureCopyWithImpl<$Res>
    implements $NetworkAppFailureCopyWith<$Res> {
  _$NetworkAppFailureCopyWithImpl(this._self, this._then);

  final NetworkAppFailure _self;
  final $Res Function(NetworkAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,}) {
  return _then(NetworkAppFailure(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class TimeoutAppFailure implements AppFailure {
  const TimeoutAppFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeoutAppFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppFailure.timeout()';
}


}




/// @nodoc


class NotFoundAppFailure implements AppFailure {
  const NotFoundAppFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFoundAppFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppFailure.notFound()';
}


}




/// @nodoc


class RateLimitedAppFailure implements AppFailure {
  const RateLimitedAppFailure({this.retryAfter});
  

 final  Duration? retryAfter;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RateLimitedAppFailureCopyWith<RateLimitedAppFailure> get copyWith => _$RateLimitedAppFailureCopyWithImpl<RateLimitedAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RateLimitedAppFailure&&(identical(other.retryAfter, retryAfter) || other.retryAfter == retryAfter));
}


@override
int get hashCode => Object.hash(runtimeType,retryAfter);

@override
String toString() {
  return 'AppFailure.rateLimited(retryAfter: $retryAfter)';
}


}

/// @nodoc
abstract mixin class $RateLimitedAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $RateLimitedAppFailureCopyWith(RateLimitedAppFailure value, $Res Function(RateLimitedAppFailure) _then) = _$RateLimitedAppFailureCopyWithImpl;
@useResult
$Res call({
 Duration? retryAfter
});




}
/// @nodoc
class _$RateLimitedAppFailureCopyWithImpl<$Res>
    implements $RateLimitedAppFailureCopyWith<$Res> {
  _$RateLimitedAppFailureCopyWithImpl(this._self, this._then);

  final RateLimitedAppFailure _self;
  final $Res Function(RateLimitedAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? retryAfter = freezed,}) {
  return _then(RateLimitedAppFailure(
retryAfter: freezed == retryAfter ? _self.retryAfter : retryAfter // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}


}

/// @nodoc


class ParseAppFailure implements AppFailure {
  const ParseAppFailure([this.message]);
  

 final  String? message;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParseAppFailureCopyWith<ParseAppFailure> get copyWith => _$ParseAppFailureCopyWithImpl<ParseAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParseAppFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppFailure.parse(message: $message)';
}


}

/// @nodoc
abstract mixin class $ParseAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $ParseAppFailureCopyWith(ParseAppFailure value, $Res Function(ParseAppFailure) _then) = _$ParseAppFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$ParseAppFailureCopyWithImpl<$Res>
    implements $ParseAppFailureCopyWith<$Res> {
  _$ParseAppFailureCopyWithImpl(this._self, this._then);

  final ParseAppFailure _self;
  final $Res Function(ParseAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(ParseAppFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CacheAppFailure implements AppFailure {
  const CacheAppFailure([this.message]);
  

 final  String? message;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheAppFailureCopyWith<CacheAppFailure> get copyWith => _$CacheAppFailureCopyWithImpl<CacheAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheAppFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppFailure.cache(message: $message)';
}


}

/// @nodoc
abstract mixin class $CacheAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $CacheAppFailureCopyWith(CacheAppFailure value, $Res Function(CacheAppFailure) _then) = _$CacheAppFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CacheAppFailureCopyWithImpl<$Res>
    implements $CacheAppFailureCopyWith<$Res> {
  _$CacheAppFailureCopyWithImpl(this._self, this._then);

  final CacheAppFailure _self;
  final $Res Function(CacheAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CacheAppFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UnknownAppFailure implements AppFailure {
  const UnknownAppFailure([this.message]);
  

 final  String? message;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownAppFailureCopyWith<UnknownAppFailure> get copyWith => _$UnknownAppFailureCopyWithImpl<UnknownAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownAppFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppFailure.unknown(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnknownAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $UnknownAppFailureCopyWith(UnknownAppFailure value, $Res Function(UnknownAppFailure) _then) = _$UnknownAppFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$UnknownAppFailureCopyWithImpl<$Res>
    implements $UnknownAppFailureCopyWith<$Res> {
  _$UnknownAppFailureCopyWithImpl(this._self, this._then);

  final UnknownAppFailure _self;
  final $Res Function(UnknownAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(UnknownAppFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
