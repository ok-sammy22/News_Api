import 'package:dio/dio.dart';
import 'package:news_app/core/constants/api_constants.dart';
import 'package:news_app/core/network/network_services.dart';
import 'package:news_app/features/news/data/model/news_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'newsapi.g.dart';

final newsApiProvider = Provider<NewsApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return NewsApi(dio);
});

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class NewsApi {
  factory NewsApi(Dio dio) = _NewsApi;
  @GET('top-headlines')
  Future<NewsResponse> getTopHeadlines(
    @Query('country') String country,
    @Query('apiKey') String apiKey,
  );
}
