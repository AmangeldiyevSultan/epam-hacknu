import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_epam_kazakh/core/components/interceptors/auth_interceptor.dart';
import 'package:flutter_epam_kazakh/core/components/rest_client/rest_client_dio.dart';
import 'package:flutter_epam_kazakh/src/map/bloc/audio_bloc.dart';
import 'package:flutter_epam_kazakh/src/map/bloc/map_bloc.dart';
import 'package:flutter_epam_kazakh/src/map/data/audio_remote_data_source.dart';
import 'package:flutter_epam_kazakh/src/map/data/map_remote_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppScope implements IAppScope {
  /// Create an instance [AppScope].
  AppScope(this._sharedPreferences);

  late final SharedPreferences _sharedPreferences;
  late final MapBloc _mapBloc;
  late final AudioBloc _audioBloc;

  static const _timeout = Duration(seconds: 30);

  Dio _initDio(
    Iterable<Interceptor> additionalInterceptors,
  ) {
    final interceptedDio = Dio(
      BaseOptions(
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        connectTimeout: _timeout,
        receiveTimeout: _timeout,
        sendTimeout: _timeout,
      ),
    );

    interceptedDio.interceptors.add(AuthInterceptor<void>(prefs: _sharedPreferences));

    interceptedDio.interceptors.addAll(additionalInterceptors);

    return interceptedDio;
  }

  Dio _initWithNoInterDio(
    Iterable<Interceptor> additionalInterceptors,
  ) {
    final interceptedDio = Dio(
      BaseOptions(
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        connectTimeout: _timeout,
        receiveTimeout: _timeout,
        sendTimeout: _timeout,
      ),
    );

    return interceptedDio;
  }

  Future<RestClientDio> _initRestClientDio(
    Iterable<Interceptor> additionalInterceptors,
  ) async {
    return RestClientDio(
      baseUrl: 'https://maps.googleapis.com',
      dio: _initWithNoInterDio(additionalInterceptors),
    );
  }

  Future<RestClientDio> _initBaseRestClientDio(
    Iterable<Interceptor> additionalInterceptors,
  ) async {
    return RestClientDio(
      baseUrl: 'https://concerned-seal-sneakers.cyclic.app',
      dio: _initWithNoInterDio(additionalInterceptors),
    );
  }

  Future<void> initMapService() async {
    final mapRemoteDataSource = MapRemoteDataSourceImpl(await _initRestClientDio([]));
    _mapBloc = MapBloc(remoteDataSource: mapRemoteDataSource);
  }

  Future<void> initAudioService() async {
    final audioRemoteDataSource =
        AudioRemoteDataSourceImpl(await _initBaseRestClientDio([]), _initWithNoInterDio([]));
    _audioBloc = AudioBloc(remoteDataSource: audioRemoteDataSource);
  }

  @override
  SharedPreferences get sharedPreferences => _sharedPreferences;

  @override
  late VoidCallback applicationRebuilder;

  @override
  Future<void> initServices() async {
    await initMapService();
    await initAudioService();
  }

  @override
  MapBloc get mapBloc => _mapBloc;

  @override
  AudioBloc get audioBloc => _audioBloc;
}

abstract class IAppScope {
  // Init repo to use it later
  Future<void> initServices();

  /// Shared preferences.
  SharedPreferences get sharedPreferences;

  /// Callback to rebuild the whole application.
  VoidCallback get applicationRebuilder;

  MapBloc get mapBloc;

  AudioBloc get audioBloc;
}
