import 'package:dio/dio.dart';
import 'package:flutter_epam_kazakh/core/components/exception/network_exception.dart';
import 'package:flutter_epam_kazakh/core/utils/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

DioException _dioException(DioException err, Exception ex) {
  return DioException(
    requestOptions: err.requestOptions,
    error: ex,
  );
}

class AuthInterceptor<T> extends QueuedInterceptor {
  AuthInterceptor({
    required SharedPreferences prefs,
  }) : _prefs = prefs;

  final SharedPreferences _prefs;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = _prefs.getString('access-token');

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      final statusCode = err.response!.statusCode;
      if (statusCode != null) {
        if (statusCode >= 400 && statusCode <= 499) {
          logger.error('${err.response?.data}');

          /// Handle client errors
          handler.reject(
            _dioException(
              err,
              ClientException(
                message: 'Client error occurred ',
                statusCode: statusCode,
              ),
            ),
          );
        } else if (statusCode >= 500 && statusCode <= 599) {
          /// Handle client errors
          handler.reject(
            _dioException(
              err,
              CustomBackendException(
                message: 'Server error occurred ',
                statusCode: statusCode,
                error: err.response?.data as Map<String, dynamic>,
              ),
            ),
          );
        }
      }
    }
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: 'The user has been deleted or the session is expired',
      ),
    );
    // Continue with default error handling for other errors
    super.onError(err, handler);
  }
}
