// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudioEvent {
  File get audioFile => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File audioFile) sendAudioEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File audioFile)? sendAudioEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File audioFile)? sendAudioEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAudioEvent value) sendAudioEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAudioEvent value)? sendAudioEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAudioEvent value)? sendAudioEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioEventCopyWith<AudioEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioEventCopyWith<$Res> {
  factory $AudioEventCopyWith(AudioEvent value, $Res Function(AudioEvent) then) =
      _$AudioEventCopyWithImpl<$Res, AudioEvent>;
  @useResult
  $Res call({File audioFile});
}

/// @nodoc
class _$AudioEventCopyWithImpl<$Res, $Val extends AudioEvent> implements $AudioEventCopyWith<$Res> {
  _$AudioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioFile = null,
  }) {
    return _then(_value.copyWith(
      audioFile: null == audioFile
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendAudioEventImplCopyWith<$Res> implements $AudioEventCopyWith<$Res> {
  factory _$$SendAudioEventImplCopyWith(
          _$SendAudioEventImpl value, $Res Function(_$SendAudioEventImpl) then) =
      __$$SendAudioEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File audioFile});
}

/// @nodoc
class __$$SendAudioEventImplCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res, _$SendAudioEventImpl>
    implements _$$SendAudioEventImplCopyWith<$Res> {
  __$$SendAudioEventImplCopyWithImpl(
      _$SendAudioEventImpl _value, $Res Function(_$SendAudioEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioFile = null,
  }) {
    return _then(_$SendAudioEventImpl(
      audioFile: null == audioFile
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$SendAudioEventImpl implements _SendAudioEvent {
  const _$SendAudioEventImpl({required this.audioFile});

  @override
  final File audioFile;

  @override
  String toString() {
    return 'AudioEvent.sendAudioEvent(audioFile: $audioFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAudioEventImpl &&
            (identical(other.audioFile, audioFile) || other.audioFile == audioFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendAudioEventImplCopyWith<_$SendAudioEventImpl> get copyWith =>
      __$$SendAudioEventImplCopyWithImpl<_$SendAudioEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File audioFile) sendAudioEvent,
  }) {
    return sendAudioEvent(audioFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File audioFile)? sendAudioEvent,
  }) {
    return sendAudioEvent?.call(audioFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File audioFile)? sendAudioEvent,
    required TResult orElse(),
  }) {
    if (sendAudioEvent != null) {
      return sendAudioEvent(audioFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAudioEvent value) sendAudioEvent,
  }) {
    return sendAudioEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAudioEvent value)? sendAudioEvent,
  }) {
    return sendAudioEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAudioEvent value)? sendAudioEvent,
    required TResult orElse(),
  }) {
    if (sendAudioEvent != null) {
      return sendAudioEvent(this);
    }
    return orElse();
  }
}

abstract class _SendAudioEvent implements AudioEvent {
  const factory _SendAudioEvent({required final File audioFile}) = _$SendAudioEventImpl;

  @override
  File get audioFile;
  @override
  @JsonKey(ignore: true)
  _$$SendAudioEventImplCopyWith<_$SendAudioEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AudioState {
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
    required TResult Function(_SuccessAudioState value) idle,
    required TResult Function(_ProcessingAudioState value) processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessAudioState value)? idle,
    TResult? Function(_ProcessingAudioState value)? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessAudioState value)? idle,
    TResult Function(_ProcessingAudioState value)? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStateCopyWith<$Res> {
  factory $AudioStateCopyWith(AudioState value, $Res Function(AudioState) then) =
      _$AudioStateCopyWithImpl<$Res, AudioState>;
}

/// @nodoc
class _$AudioStateCopyWithImpl<$Res, $Val extends AudioState> implements $AudioStateCopyWith<$Res> {
  _$AudioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessAudioStateImplCopyWith<$Res> {
  factory _$$SuccessAudioStateImplCopyWith(
          _$SuccessAudioStateImpl value, $Res Function(_$SuccessAudioStateImpl) then) =
      __$$SuccessAudioStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$SuccessAudioStateImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$SuccessAudioStateImpl>
    implements _$$SuccessAudioStateImplCopyWith<$Res> {
  __$$SuccessAudioStateImplCopyWithImpl(
      _$SuccessAudioStateImpl _value, $Res Function(_$SuccessAudioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$SuccessAudioStateImpl(
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$SuccessAudioStateImpl extends _SuccessAudioState {
  const _$SuccessAudioStateImpl({this.error}) : super._();

  @override
  final Object? error;

  @override
  String toString() {
    return 'AudioState.idle(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAudioStateImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessAudioStateImplCopyWith<_$SuccessAudioStateImpl> get copyWith =>
      __$$SuccessAudioStateImplCopyWithImpl<_$SuccessAudioStateImpl>(this, _$identity);

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
    required TResult Function(_SuccessAudioState value) idle,
    required TResult Function(_ProcessingAudioState value) processing,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessAudioState value)? idle,
    TResult? Function(_ProcessingAudioState value)? processing,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessAudioState value)? idle,
    TResult Function(_ProcessingAudioState value)? processing,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _SuccessAudioState extends AudioState {
  const factory _SuccessAudioState({final Object? error}) = _$SuccessAudioStateImpl;
  const _SuccessAudioState._() : super._();

  Object? get error;
  @JsonKey(ignore: true)
  _$$SuccessAudioStateImplCopyWith<_$SuccessAudioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessingAudioStateImplCopyWith<$Res> {
  factory _$$ProcessingAudioStateImplCopyWith(
          _$ProcessingAudioStateImpl value, $Res Function(_$ProcessingAudioStateImpl) then) =
      __$$ProcessingAudioStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingAudioStateImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$ProcessingAudioStateImpl>
    implements _$$ProcessingAudioStateImplCopyWith<$Res> {
  __$$ProcessingAudioStateImplCopyWithImpl(
      _$ProcessingAudioStateImpl _value, $Res Function(_$ProcessingAudioStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProcessingAudioStateImpl extends _ProcessingAudioState {
  const _$ProcessingAudioStateImpl() : super._();

  @override
  String toString() {
    return 'AudioState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingAudioStateImpl);
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
    required TResult Function(_SuccessAudioState value) idle,
    required TResult Function(_ProcessingAudioState value) processing,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessAudioState value)? idle,
    TResult? Function(_ProcessingAudioState value)? processing,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessAudioState value)? idle,
    TResult Function(_ProcessingAudioState value)? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _ProcessingAudioState extends AudioState {
  const factory _ProcessingAudioState() = _$ProcessingAudioStateImpl;
  const _ProcessingAudioState._() : super._();
}
