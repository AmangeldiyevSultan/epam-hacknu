import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_epam_kazakh/core/components/rest_client/rest_client.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

abstract interface class AudioRemoteDataSource {
  Future<void> sendAudio({
    required File audioFile,
  });
}

class AudioRemoteDataSourceImpl implements AudioRemoteDataSource {
  const AudioRemoteDataSourceImpl(
    this._client,
    this._dio,
  );

  final RestClient _client;

  final Dio _dio;

  @override
  Future<void> sendAudio({required File audioFile}) async {
    try {
      var formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(audioFile.path,
            contentType: MediaType('audio', 'wav')),
        // Include other parameters if needed
      });

      print('fdscvdgbg');
      final response = await _dio.post(
          'https://epam-hacknu24-nodejs.onrender.com/speech/transcribe',
          data: formData,
          options: Options(
            headers: {
              'Content-Type': 'multipart/form-data',
            },
          ));
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
