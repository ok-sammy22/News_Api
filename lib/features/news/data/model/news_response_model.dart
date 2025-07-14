import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_response_model.freezed.dart';
part 'news_response_model.g.dart';

@freezed
abstract class NewsResponse with _$NewsResponse {
  const factory NewsResponse({
    required String status,
    required int totalResults,
    required List<Article> articles,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}

@freezed
abstract class Article with _$Article {
  const factory Article({
    required Source source,
    String? author,
    required String title,
    String? description,
    required String url,
    String? urlToImage,
    required String publishedAt,
    String? content,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
abstract class Source with _$Source {
  const factory Source({String? id, required String name}) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
