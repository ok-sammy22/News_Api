import 'package:news_app/core/errors/typedef.dart';
import 'package:news_app/features/news/data/model/news_response_model.dart';

abstract interface class INewsRepository {
  ApiResult<NewsResponse> getTopHeadlines();
}
