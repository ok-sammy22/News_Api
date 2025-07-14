import 'package:news_app/core/errors/typedef.dart';
import 'package:news_app/features/news/data/model/news_response_model.dart';
import 'package:news_app/features/news/data/repositories/newsrepositories.dart';
import 'package:news_app/features/news/domain/repository/iNewsRepository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final topHeadlineUseCaseProvider = Provider<GetNewsHeadlineUseCase>((ref) {
  final repo = ref.watch(newsRepositoryProvider);
  return GetNewsHeadlineUseCase(repo);
});

class GetNewsHeadlineUseCase {
  final INewsRepository newsRepository;
  GetNewsHeadlineUseCase(this.newsRepository);
  ApiResult<NewsResponse> call() {
    return newsRepository.getTopHeadlines();
  }
}
