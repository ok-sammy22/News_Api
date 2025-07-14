import 'package:dio/dio.dart';
import 'package:news_app/core/constants/api_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final networkServiceProvider = Provider<Dio>((ref) {
  final options = BaseOptions(
    baseUrl: ApiConstants.baseUrl,
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    sendTimeout: const Duration(seconds: 60),
  );

  final dio = Dio(options);

  // dio.interceptors.add(
  //   InterceptorsWrapper(
  //     onRequest: (options, handler) {
  //       options.queryParameters.addAll({'apikey': ApiConstants.apiKey});
  //       return handler.next(options);
  //     },
  //   ),
  // );

  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: false,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ),
  );

  return dio;
});
