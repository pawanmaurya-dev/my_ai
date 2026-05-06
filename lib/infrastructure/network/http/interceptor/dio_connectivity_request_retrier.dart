import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

class DioConnectivityRequestRetrier {
  DioConnectivityRequestRetrier({
    required this.dio,
    required this.connectivity,
  });

  final Dio dio;
  final Connectivity connectivity;

  Future<Response<dynamic>> scheduleRequestRetry(
    RequestOptions requestOptions,
  ) async {
    final responseCompleter = Completer<Response<dynamic>>();
    late final StreamSubscription<dynamic> subscription;

    subscription = connectivity.onConnectivityChanged.listen(
      (connectivityResult) {
        if (_isConnected(connectivityResult) &&
            !responseCompleter.isCompleted) {
          subscription.cancel();
          responseCompleter.complete(_retry(requestOptions));
        }
      },
      onError: responseCompleter.completeError,
    );

    return responseCompleter.future.timeout(
      const Duration(seconds: 30),
      onTimeout: () {
        subscription.cancel();
        throw DioException(
          requestOptions: requestOptions,
          type: DioExceptionType.connectionTimeout,
          message: 'Retry timed out while waiting for connectivity.',
        );
      },
    );
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    return dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      cancelToken: requestOptions.cancelToken,
      onReceiveProgress: requestOptions.onReceiveProgress,
      onSendProgress: requestOptions.onSendProgress,
      options: Options(
        method: requestOptions.method,
        sendTimeout: requestOptions.sendTimeout,
        receiveTimeout: requestOptions.receiveTimeout,
        extra: requestOptions.extra,
        headers: requestOptions.headers,
        responseType: requestOptions.responseType,
        contentType: requestOptions.contentType,
        validateStatus: requestOptions.validateStatus,
        receiveDataWhenStatusError: requestOptions.receiveDataWhenStatusError,
        followRedirects: requestOptions.followRedirects,
        maxRedirects: requestOptions.maxRedirects,
        requestEncoder: requestOptions.requestEncoder,
        responseDecoder: requestOptions.responseDecoder,
        listFormat: requestOptions.listFormat,
      ),
    );
  }

  bool _isConnected(dynamic connectivityResult) {
    if (connectivityResult is List<ConnectivityResult>) {
      return connectivityResult.any(
        (result) => result != ConnectivityResult.none,
      );
    }

    return connectivityResult != ConnectivityResult.none;
  }
}
