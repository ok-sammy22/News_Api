// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) =>
    _NewsResponse(
      status: json['status'] as String,
      totalResults: (json['totalResults'] as num).toInt(),
      articles:
          (json['articles'] as List<dynamic>)
              .map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$NewsResponseToJson(_NewsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };

_Article _$ArticleFromJson(Map<String, dynamic> json) => _Article(
  source: Source.fromJson(json['source'] as Map<String, dynamic>),
  author: json['author'] as String?,
  title: json['title'] as String,
  description: json['description'] as String?,
  url: json['url'] as String,
  urlToImage: json['urlToImage'] as String?,
  publishedAt: json['publishedAt'] as String,
  content: json['content'] as String?,
);

Map<String, dynamic> _$ArticleToJson(_Article instance) => <String, dynamic>{
  'source': instance.source,
  'author': instance.author,
  'title': instance.title,
  'description': instance.description,
  'url': instance.url,
  'urlToImage': instance.urlToImage,
  'publishedAt': instance.publishedAt,
  'content': instance.content,
};

_Source _$SourceFromJson(Map<String, dynamic> json) =>
    _Source(id: json['id'] as String?, name: json['name'] as String);

Map<String, dynamic> _$SourceToJson(_Source instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
