// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapEvent {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude) getNearByPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude)? getNearByPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? getNearByPlaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNearByPlacesEvent value) getNearByPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNearByPlacesEvent value)? getNearByPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNearByPlacesEvent value)? getNearByPlaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapEventCopyWith<MapEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res, MapEvent>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res, $Val extends MapEvent> implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNearByPlacesEventImplCopyWith<$Res> implements $MapEventCopyWith<$Res> {
  factory _$$GetNearByPlacesEventImplCopyWith(
          _$GetNearByPlacesEventImpl value, $Res Function(_$GetNearByPlacesEventImpl) then) =
      __$$GetNearByPlacesEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$GetNearByPlacesEventImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$GetNearByPlacesEventImpl>
    implements _$$GetNearByPlacesEventImplCopyWith<$Res> {
  __$$GetNearByPlacesEventImplCopyWithImpl(
      _$GetNearByPlacesEventImpl _value, $Res Function(_$GetNearByPlacesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$GetNearByPlacesEventImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GetNearByPlacesEventImpl implements _GetNearByPlacesEvent {
  const _$GetNearByPlacesEventImpl({required this.latitude, required this.longitude});

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'MapEvent.getNearByPlaces(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNearByPlacesEventImpl &&
            (identical(other.latitude, latitude) || other.latitude == latitude) &&
            (identical(other.longitude, longitude) || other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNearByPlacesEventImplCopyWith<_$GetNearByPlacesEventImpl> get copyWith =>
      __$$GetNearByPlacesEventImplCopyWithImpl<_$GetNearByPlacesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude) getNearByPlaces,
  }) {
    return getNearByPlaces(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude)? getNearByPlaces,
  }) {
    return getNearByPlaces?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? getNearByPlaces,
    required TResult orElse(),
  }) {
    if (getNearByPlaces != null) {
      return getNearByPlaces(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNearByPlacesEvent value) getNearByPlaces,
  }) {
    return getNearByPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNearByPlacesEvent value)? getNearByPlaces,
  }) {
    return getNearByPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNearByPlacesEvent value)? getNearByPlaces,
    required TResult orElse(),
  }) {
    if (getNearByPlaces != null) {
      return getNearByPlaces(this);
    }
    return orElse();
  }
}

abstract class _GetNearByPlacesEvent implements MapEvent {
  const factory _GetNearByPlacesEvent(
      {required final double latitude,
      required final double longitude}) = _$GetNearByPlacesEventImpl;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$GetNearByPlacesEventImplCopyWith<_$GetNearByPlacesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error) idle,
    required TResult Function() processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error)? idle,
    TResult? Function()? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error)? idle,
    TResult Function()? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessMapState value) idle,
    required TResult Function(_ProcessingMapState value) processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessMapState value)? idle,
    TResult? Function(_ProcessingMapState value)? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessMapState value)? idle,
    TResult Function(_ProcessingMapState value)? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessMapStateImplCopyWith<$Res> {
  factory _$$SuccessMapStateImplCopyWith(
          _$SuccessMapStateImpl value, $Res Function(_$SuccessMapStateImpl) then) =
      __$$SuccessMapStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$SuccessMapStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$SuccessMapStateImpl>
    implements _$$SuccessMapStateImplCopyWith<$Res> {
  __$$SuccessMapStateImplCopyWithImpl(
      _$SuccessMapStateImpl _value, $Res Function(_$SuccessMapStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$SuccessMapStateImpl(
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$SuccessMapStateImpl extends _SuccessMapState {
  const _$SuccessMapStateImpl({this.error}) : super._();

  @override
  final Object? error;

  @override
  String toString() {
    return 'MapState.idle(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessMapStateImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessMapStateImplCopyWith<_$SuccessMapStateImpl> get copyWith =>
      __$$SuccessMapStateImplCopyWithImpl<_$SuccessMapStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error) idle,
    required TResult Function() processing,
  }) {
    return idle(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error)? idle,
    TResult? Function()? processing,
  }) {
    return idle?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error)? idle,
    TResult Function()? processing,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessMapState value) idle,
    required TResult Function(_ProcessingMapState value) processing,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessMapState value)? idle,
    TResult? Function(_ProcessingMapState value)? processing,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessMapState value)? idle,
    TResult Function(_ProcessingMapState value)? processing,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _SuccessMapState extends MapState {
  const factory _SuccessMapState({final Object? error}) = _$SuccessMapStateImpl;
  const _SuccessMapState._() : super._();

  Object? get error;
  @JsonKey(ignore: true)
  _$$SuccessMapStateImplCopyWith<_$SuccessMapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessingMapStateImplCopyWith<$Res> {
  factory _$$ProcessingMapStateImplCopyWith(
          _$ProcessingMapStateImpl value, $Res Function(_$ProcessingMapStateImpl) then) =
      __$$ProcessingMapStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingMapStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$ProcessingMapStateImpl>
    implements _$$ProcessingMapStateImplCopyWith<$Res> {
  __$$ProcessingMapStateImplCopyWithImpl(
      _$ProcessingMapStateImpl _value, $Res Function(_$ProcessingMapStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProcessingMapStateImpl extends _ProcessingMapState {
  const _$ProcessingMapStateImpl() : super._();

  @override
  String toString() {
    return 'MapState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingMapStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error) idle,
    required TResult Function() processing,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error)? idle,
    TResult? Function()? processing,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error)? idle,
    TResult Function()? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessMapState value) idle,
    required TResult Function(_ProcessingMapState value) processing,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessMapState value)? idle,
    TResult? Function(_ProcessingMapState value)? processing,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessMapState value)? idle,
    TResult Function(_ProcessingMapState value)? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _ProcessingMapState extends MapState {
  const factory _ProcessingMapState() = _$ProcessingMapStateImpl;
  const _ProcessingMapState._() : super._();
}
