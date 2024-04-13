import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_epam_kazakh/src/map/data/audio_remote_data_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_bloc.freezed.dart';

@freezed
class AudioEvent with _$AudioEvent {
  const factory AudioEvent.sendAudioEvent({
    required File audioFile,
  }) = _SendAudioEvent;
}

@freezed
class AudioState with _$AudioState {
  const AudioState._();

  const factory AudioState.idle({
    Object? error,
  }) = _SuccessAudioState;

  /// Processing state.
  const factory AudioState.processing() = _ProcessingAudioState;

  /// Returns whether the state is processing or not.
  bool get isProcessing => maybeMap(
        orElse: () => false,
        processing: (_) => true,
      );
}

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  AudioBloc({
    required AudioRemoteDataSource remoteDataSource,
  })  : _dataSource = remoteDataSource,
        super(const AudioState.processing()) {
    on<_SendAudioEvent>(_sendAudioHandler);
  }

  final AudioRemoteDataSource _dataSource;

  Future<void> _sendAudioHandler(
    _SendAudioEvent event,
    Emitter<AudioState> emit,
  ) async {
    emit(const AudioState.processing());

    try {
      await _dataSource.sendAudio(
        audioFile: event.audioFile,
      );

      emit(const AudioState.idle());
    } catch (e) {
      emit(AudioState.idle(error: e));
    }
  }
}
