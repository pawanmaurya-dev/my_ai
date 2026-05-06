import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// import '../../../core/utils/secure_storage_util.dart';
import 'api_response.dart';
import 'app_exception.dart';
import 'interceptor/dio_connectivity_request_retrier.dart';
import 'interceptor/retry_interceptor.dart';

enum ContentType { urlEncoded, json, multipart }

final apiProvider = Provider<ApiProvider>((ref) => ApiProvider(ref));

class ApiProvider {
  ApiProvider(Ref _) {
    _dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );

    _dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          dio: _dio,
          connectivity: _connectivity,
        ),
      ),
    );

    if (kDebugMode) {
      _dio.httpClientAdapter = IOHttpClientAdapter(
        createHttpClient: () {
          final client = HttpClient();
          client.badCertificateCallback = (_, __, ___) => true;
          return client;
        },
      );

      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: false,
          responseBody: true,
          compact: true,
        ),
      );
    }

    // _baseUrl = dotenv.env['baseUrl']?.trim() ?? '';
    _baseUrl = "https://jsonplaceholder.typicode.com";
  }

  final Connectivity _connectivity = Connectivity();
  late final Dio _dio;
  late final String _baseUrl;

  Future<APIResponse> get(
    String path, {
    String? newBaseUrl,
    String? token,
    Map<String, dynamic>? query,
    Map<String, String>? newHeader,
    ContentType contentType = ContentType.json,
  }) {
    return _request(
      method: 'GET',
      path: path,
      newBaseUrl: newBaseUrl,
      token: token,
      query: query,
      headers: newHeader,
      contentType: contentType,
    );
  }

  Future<APIResponse> post(
    String path, {
    dynamic body,
    String? newBaseUrl,
    String? token,
    bool fetchOnlyData = true,
    Map<String, String?>? query,
    Map<String, String>? headerss,
    ContentType contentType = ContentType.json,
  }) {
    return _request(
      method: 'POST',
      path: path,
      body: body,
      newBaseUrl: newBaseUrl,
      token: token,
      query: query,
      headers: headerss,
      contentType: contentType,
    );
  }

  Future<APIResponse> put(
    String path, {
    dynamic body,
    String? newBaseUrl,
    String? token,
    Map<String, String>? headerss,
    Map<String, String?>? query,
    ContentType contentType = ContentType.json,
  }) {
    return _request(
      method: 'PUT',
      path: path,
      body: body,
      newBaseUrl: newBaseUrl,
      token: token,
      query: query,
      headers: headerss,
      contentType: contentType,
    );
  }

  Future<APIResponse> delete(
    String path, {
    dynamic body,
    String? newBaseUrl,
    String? token,
    Map<String, String>? headerss,
    Map<String, String?>? query,
    ContentType contentType = ContentType.urlEncoded,
  }) {
    return _request(
      method: 'DELETE',
      path: path,
      body: body,
      newBaseUrl: newBaseUrl,
      token: token,
      query: query,
      headers: headerss,
      contentType: contentType,
    );
  }

  Future<APIResponse> downloadFile(
    String fileUrl, {
    required String savePath,
    String? newBaseUrl,
    String? token,
    Map<String, dynamic>? query,
  }) async {
    if (!await _hasInternet()) {
      return const APIResponse.error(AppException.connectivity());
    }

    try {
      final response = await _dio.download(
        _buildUrl(fileUrl, newBaseUrl),
        savePath,
        queryParameters: query,
        options: Options(
          validateStatus: (_) => true,
          headers: await _buildHeaders(token: token),
        ),
      );

      return _mapResponse(response, preferDataField: false);
    } on DioException catch (error) {
      return _mapDioException(error);
    } on Object catch (error, stackTrace) {
      debugPrint('Unexpected download error: $error\n$stackTrace');
      return const APIResponse.error(AppException.error());
    }
  }

  Future<APIResponse> _request({
    required String method,
    required String path,
    dynamic body,
    String? newBaseUrl,
    String? token,
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    ContentType contentType = ContentType.json,
  }) async {
    if (!await _hasInternet()) {
      return const APIResponse.error(AppException.connectivity());
    }

    try {
      final response = await _dio.request(
        _buildUrl(path, newBaseUrl),
        data: body ?? {},
        queryParameters: query,
        options: Options(
          method: method,
          validateStatus: (_) => true,
          headers: await _buildHeaders(
            token: token,
            customHeaders: headers,
            contentType: contentType,
          ),
        ),
      );

      return _mapResponse(response, preferDataField: false);
    } on DioException catch (error) {
      return _mapDioException(error);
    } on Object catch (error, stackTrace) {
      debugPrint('Unexpected API error: $error\n$stackTrace');
      return const APIResponse.error(AppException.error());
    }
  }

  Future<bool> _hasInternet() async {
    final dynamic result = await _connectivity.checkConnectivity();
    if (result is List<ConnectivityResult>) {
      return result.any((item) => item != ConnectivityResult.none);
    }

    return result != ConnectivityResult.none;
  }

  String _buildUrl(String path, String? newBaseUrl) {
    final baseUrl = (newBaseUrl ?? _baseUrl).trim();
    if (baseUrl.isEmpty || path.startsWith('http')) {
      return path;
    }

    final normalizedBase = baseUrl.endsWith('/')
        ? baseUrl.substring(0, baseUrl.length - 1)
        : baseUrl;
    final normalizedPath = path.startsWith('/') ? path : '/$path';
    return '$normalizedBase$normalizedPath';
  }

  Future<Map<String, String>> _buildHeaders({
    String? token,
    Map<String, String>? customHeaders,
    ContentType contentType = ContentType.json,
  }) async {
    final headers = <String, String>{
      'accept': '*/*',
      'Content-Type': _contentTypeValue(contentType),
    };

    // final storageToken = await UserSecureStorage.token;
    final storageToken = "";
    final authToken = token ?? storageToken;
    if (authToken.isNotEmpty) {
      headers['Authorization'] = _normalizeBearerToken(authToken);
    }

    if (customHeaders != null) {
      headers.addAll(customHeaders);
    }

    return headers;
  }

  String _contentTypeValue(ContentType contentType) {
    switch (contentType) {
      case ContentType.multipart:
        return 'multipart/form-data';
      case ContentType.json:
        return 'application/json; charset=utf-8';
      case ContentType.urlEncoded:
        return 'application/x-www-form-urlencoded';
    }
  }

  String _normalizeBearerToken(String token) {
    if (token.toLowerCase().startsWith('bearer ')) {
      return token;
    }
    return 'Bearer $token';
  }

  APIResponse _mapResponse(Response response, {required bool preferDataField}) {
    final statusCode = response.statusCode;
    if (statusCode == null) {
      return const APIResponse.error(AppException.connectivity());
    }

    if (statusCode >= 200 && statusCode < 300) {
      if (preferDataField &&
          response.data is Map &&
          response.data['data'] != null) {
        return APIResponse.success(response.data['data']);
      }
      return APIResponse.success(response.data);
    }

    if (statusCode == 401) {
      return const APIResponse.error(AppException.unauthorized());
    }

    return APIResponse.error(_messageException(response.data));
  }

  APIResponse _mapDioException(DioException error) {
    if (error.error is SocketException ||
        error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout ||
        error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.connectionError) {
      return const APIResponse.error(AppException.connectivity());
    }

    final responseData = error.response?.data;
    if (responseData != null) {
      return APIResponse.error(_messageException(responseData));
    }

    final message = error.message;
    if (message != null && message.trim().isNotEmpty) {
      return APIResponse.error(AppException.errorWithMessage(message));
    }

    return const APIResponse.error(AppException.error());
  }

  AppException _messageException(dynamic data) {
    final message = _extractMessage(data);
    if (message != null && message.trim().isNotEmpty) {
      return AppException.errorWithMessage(message);
    }
    return const AppException.error();
  }

  String? _extractMessage(dynamic data) {
    if (data is String) {
      return data;
    }

    if (data is Map) {
      final message = data['message'] ?? data['error'] ?? data['title'];
      if (message != null) {
        return message.toString();
      }
    }

    return null;
  }
}
