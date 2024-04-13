import 'package:flutter_epam_kazakh/core/components/rest_client/rest_client.dart';

abstract interface class MapRemoteDataSource {
  Future<void> getNearByPlaces({
    required double latitude,
    required double longitude,
  });
}

class MapRemoteDataSourceImpl implements MapRemoteDataSource {
  const MapRemoteDataSourceImpl(this._client);

  final RestClient _client;

  @override
  Future<void> getNearByPlaces({
    required double latitude,
    required double longitude,
  }) async {
    final response = await _client.get(
      '/maps/api/place/nearbysearch/json',
      queryParams: {
        'location': '$latitude,$longitude',
        'radius': '500',
        'type': 'establishment',
        'key': 'AIzaSyAw08p-YusHyFm-N043K3YvGqoEnecypNo',
      },
    );
  }
}
