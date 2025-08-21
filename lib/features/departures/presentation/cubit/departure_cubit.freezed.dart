// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departure_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DepartureState {

 List<Departure> get departures; AppFailure? get failure; DepartureStatus get status;
/// Create a copy of DepartureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartureStateCopyWith<DepartureState> get copyWith => _$DepartureStateCopyWithImpl<DepartureState>(this as DepartureState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartureState&&const DeepCollectionEquality().equals(other.departures, departures)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(departures),failure,status);

@override
String toString() {
  return 'DepartureState(departures: $departures, failure: $failure, status: $status)';
}


}

/// @nodoc
abstract mixin class $DepartureStateCopyWith<$Res>  {
  factory $DepartureStateCopyWith(DepartureState value, $Res Function(DepartureState) _then) = _$DepartureStateCopyWithImpl;
@useResult
$Res call({
 List<Departure> departures, AppFailure? failure, DepartureStatus status
});


$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$DepartureStateCopyWithImpl<$Res>
    implements $DepartureStateCopyWith<$Res> {
  _$DepartureStateCopyWithImpl(this._self, this._then);

  final DepartureState _self;
  final $Res Function(DepartureState) _then;

/// Create a copy of DepartureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? departures = null,Object? failure = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
departures: null == departures ? _self.departures : departures // ignore: cast_nullable_to_non_nullable
as List<Departure>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DepartureStatus,
  ));
}
/// Create a copy of DepartureState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppFailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $AppFailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}


/// Adds pattern-matching-related methods to [DepartureState].
extension DepartureStatePatterns on DepartureState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DepartureState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DepartureState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DepartureState value)  $default,){
final _that = this;
switch (_that) {
case _DepartureState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DepartureState value)?  $default,){
final _that = this;
switch (_that) {
case _DepartureState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Departure> departures,  AppFailure? failure,  DepartureStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepartureState() when $default != null:
return $default(_that.departures,_that.failure,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Departure> departures,  AppFailure? failure,  DepartureStatus status)  $default,) {final _that = this;
switch (_that) {
case _DepartureState():
return $default(_that.departures,_that.failure,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Departure> departures,  AppFailure? failure,  DepartureStatus status)?  $default,) {final _that = this;
switch (_that) {
case _DepartureState() when $default != null:
return $default(_that.departures,_that.failure,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _DepartureState implements DepartureState {
  const _DepartureState({final  List<Departure> departures = const [], this.failure, this.status = DepartureStatus.loading}): _departures = departures;
  

 final  List<Departure> _departures;
@override@JsonKey() List<Departure> get departures {
  if (_departures is EqualUnmodifiableListView) return _departures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_departures);
}

@override final  AppFailure? failure;
@override@JsonKey() final  DepartureStatus status;

/// Create a copy of DepartureState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartureStateCopyWith<_DepartureState> get copyWith => __$DepartureStateCopyWithImpl<_DepartureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DepartureState&&const DeepCollectionEquality().equals(other._departures, _departures)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_departures),failure,status);

@override
String toString() {
  return 'DepartureState(departures: $departures, failure: $failure, status: $status)';
}


}

/// @nodoc
abstract mixin class _$DepartureStateCopyWith<$Res> implements $DepartureStateCopyWith<$Res> {
  factory _$DepartureStateCopyWith(_DepartureState value, $Res Function(_DepartureState) _then) = __$DepartureStateCopyWithImpl;
@override @useResult
$Res call({
 List<Departure> departures, AppFailure? failure, DepartureStatus status
});


@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$DepartureStateCopyWithImpl<$Res>
    implements _$DepartureStateCopyWith<$Res> {
  __$DepartureStateCopyWithImpl(this._self, this._then);

  final _DepartureState _self;
  final $Res Function(_DepartureState) _then;

/// Create a copy of DepartureState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? departures = null,Object? failure = freezed,Object? status = null,}) {
  return _then(_DepartureState(
departures: null == departures ? _self._departures : departures // ignore: cast_nullable_to_non_nullable
as List<Departure>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DepartureStatus,
  ));
}

/// Create a copy of DepartureState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppFailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $AppFailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
