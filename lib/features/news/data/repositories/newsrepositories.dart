import 'package:dartz/dartz.dart';
import 'package:news_app/core/constants/api_constants.dart';
import 'package:news_app/core/errors/error_handlers.dart';
import 'package:news_app/core/errors/typedef.dart';
import 'package:news_app/features/news/data/datasource/newsapi.dart';
import 'package:news_app/features/news/data/model/news_response_model.dart';
import 'package:news_app/features/news/domain/repository/iNewsRepository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final newsRepositoryProvider = Provider<INewsRepository>((ref) {
  final api = ref.watch(newsApiProvider);
  return NewsRepositoryImpl(api);
});

class NewsRepositoryImpl implements INewsRepository {
  final NewsApi api;
  NewsRepositoryImpl(this.api);

  @override
  Result<NewsResponse> getTopHeadlines() async {
    try {
      final response = await api.getTopHeadlines('us', ApiConstants.apiKey);
      return Right(response);
    } catch (e, stack) {
      return Left(ErrorHandler.handle(e, stack));
    }
  }
}
