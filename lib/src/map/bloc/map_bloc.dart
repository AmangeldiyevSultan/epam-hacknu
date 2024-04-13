import 'package:bloc/bloc.dart';
import 'package:flutter_epam_kazakh/src/map/data/map_remote_data_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_bloc.freezed.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.getNearByPlaces({
    required double latitude,
    required double longitude,
  }) = _GetNearByPlacesEvent;
}

@freezed
class MapState with _$MapState {
  const MapState._();

  const factory MapState.idle({
    Object? error,
  }) = _SuccessMapState;

  /// Processing state.
  const factory MapState.processing() = _ProcessingMapState;

  /// Returns whether the state is processing or not.
  bool get isProcessing => maybeMap(
        orElse: () => false,
        processing: (_) => true,
      );
}

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc({
    required MapRemoteDataSource remoteDataSource,
  })  : _dataSource = remoteDataSource,
        super(const MapState.processing()) {
    on<_GetNearByPlacesEvent>(_getNearByPlacesHandler);
  }

  final MapRemoteDataSource _dataSource;

  Future<void> _getNearByPlacesHandler(
    _GetNearByPlacesEvent event,
    Emitter<MapState> emit,
  ) async {
    emit(const MapState.processing());

    try {
      await _dataSource.getNearByPlaces(
        latitude: event.latitude,
        longitude: event.longitude,
      );

      emit(const MapState.idle());
    } catch (e) {
      emit(MapState.idle(error: e));
    }
  }
}
