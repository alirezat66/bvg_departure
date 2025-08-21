// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_stops_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchStopsEvent {

 String get query;
/// Create a copy of SearchStopsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStopsEventCopyWith<SearchStopsEvent> get copyWith => _$SearchStopsEventCopyWithImpl<SearchStopsEvent>(this as SearchStopsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchStopsEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchStopsEvent(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchStopsEventCopyWith<$Res>  {
  factory $SearchStopsEventCopyWith(SearchStopsEvent value, $Res Function(SearchStopsEvent) _then) = _$SearchStopsEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchStopsEventCopyWithImpl<$Res>
    implements $SearchStopsEventCopyWith<$Res> {
  _$SearchStopsEventCopyWithImpl(this._self, this._then);

  final SearchStopsEvent _self;
  final $Res Function(SearchStopsEvent) _then;

/// Create a copy of SearchStopsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchStopsEvent].
extension SearchStopsEventPatterns on SearchStopsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _QueryChanged value)?  queryChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QueryChanged() when queryChanged != null:
return queryChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _QueryChanged value)  queryChanged,}){
final _that = this;
switch (_that) {
case _QueryChanged():
return queryChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _QueryChanged value)?  queryChanged,}){
final _that = this;
switch (_that) {
case _QueryChanged() when queryChanged != null:
return queryChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  queryChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QueryChanged() when queryChanged != null:
return queryChanged(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  queryChanged,}) {final _that = this;
switch (_that) {
case _QueryChanged():
return queryChanged(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  queryChanged,}) {final _that = this;
switch (_that) {
case _QueryChanged() when queryChanged != null:
return queryChanged(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _QueryChanged implements SearchStopsEvent {
  const _QueryChanged(this.query);
  

@override final  String query;

/// Create a copy of SearchStopsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueryChangedCopyWith<_QueryChanged> get copyWith => __$QueryChangedCopyWithImpl<_QueryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueryChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchStopsEvent.queryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class _$QueryChangedCopyWith<$Res> implements $SearchStopsEventCopyWith<$Res> {
  factory _$QueryChangedCopyWith(_QueryChanged value, $Res Function(_QueryChanged) _then) = __$QueryChangedCopyWithImpl;
@override @useResult
$Res call({
 String query
});




}
/// @nodoc
class __$QueryChangedCopyWithImpl<$Res>
    implements _$QueryChangedCopyWith<$Res> {
  __$QueryChangedCopyWithImpl(this._self, this._then);

  final _QueryChanged _self;
  final $Res Function(_QueryChanged) _then;

/// Create a copy of SearchStopsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_QueryChanged(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchStopsState {

 String get query; List<Stop> get suggestions; AppFailure? get failure; SearchStatus get status;
/// Create a copy of SearchStopsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStopsStateCopyWith<SearchStopsState> get copyWith => _$SearchStopsStateCopyWithImpl<SearchStopsState>(this as SearchStopsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchStopsState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(suggestions),failure,status);

@override
String toString() {
  return 'SearchStopsState(query: $query, suggestions: $suggestions, failure: $failure, status: $status)';
}


}

/// @nodoc
abstract mixin class $SearchStopsStateCopyWith<$Res>  {
  factory $SearchStopsStateCopyWith(SearchStopsState value, $Res Function(SearchStopsState) _then) = _$SearchStopsStateCopyWithImpl;
@useResult
$Res call({
 String query, List<Stop> suggestions, AppFailure? failure, SearchStatus status
});


$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$SearchStopsStateCopyWithImpl<$Res>
    implements $SearchStopsStateCopyWith<$Res> {
  _$SearchStopsStateCopyWithImpl(this._self, this._then);

  final SearchStopsState _self;
  final $Res Function(SearchStopsState) _then;

/// Create a copy of SearchStopsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? suggestions = null,Object? failure = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<Stop>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SearchStatus,
  ));
}
/// Create a copy of SearchStopsState
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


/// Adds pattern-matching-related methods to [SearchStopsState].
extension SearchStopsStatePatterns on SearchStopsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchStopsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchStopsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchStopsState value)  $default,){
final _that = this;
switch (_that) {
case _SearchStopsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchStopsState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchStopsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<Stop> suggestions,  AppFailure? failure,  SearchStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchStopsState() when $default != null:
return $default(_that.query,_that.suggestions,_that.failure,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<Stop> suggestions,  AppFailure? failure,  SearchStatus status)  $default,) {final _that = this;
switch (_that) {
case _SearchStopsState():
return $default(_that.query,_that.suggestions,_that.failure,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<Stop> suggestions,  AppFailure? failure,  SearchStatus status)?  $default,) {final _that = this;
switch (_that) {
case _SearchStopsState() when $default != null:
return $default(_that.query,_that.suggestions,_that.failure,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _SearchStopsState implements SearchStopsState {
  const _SearchStopsState({this.query = '', final  List<Stop> suggestions = const [], this.failure, this.status = SearchStatus.idle}): _suggestions = suggestions;
  

@override@JsonKey() final  String query;
 final  List<Stop> _suggestions;
@override@JsonKey() List<Stop> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override final  AppFailure? failure;
@override@JsonKey() final  SearchStatus status;

/// Create a copy of SearchStopsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStopsStateCopyWith<_SearchStopsState> get copyWith => __$SearchStopsStateCopyWithImpl<_SearchStopsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchStopsState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_suggestions),failure,status);

@override
String toString() {
  return 'SearchStopsState(query: $query, suggestions: $suggestions, failure: $failure, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SearchStopsStateCopyWith<$Res> implements $SearchStopsStateCopyWith<$Res> {
  factory _$SearchStopsStateCopyWith(_SearchStopsState value, $Res Function(_SearchStopsState) _then) = __$SearchStopsStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<Stop> suggestions, AppFailure? failure, SearchStatus status
});


@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$SearchStopsStateCopyWithImpl<$Res>
    implements _$SearchStopsStateCopyWith<$Res> {
  __$SearchStopsStateCopyWithImpl(this._self, this._then);

  final _SearchStopsState _self;
  final $Res Function(_SearchStopsState) _then;

/// Create a copy of SearchStopsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? suggestions = null,Object? failure = freezed,Object? status = null,}) {
  return _then(_SearchStopsState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<Stop>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SearchStatus,
  ));
}

/// Create a copy of SearchStopsState
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
