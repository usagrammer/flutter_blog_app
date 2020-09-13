// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$_$_ArticleFromJson(Map<String, dynamic> json) {
  return _$_Article(
    id: json['id'] as int,
    title: json['title'] as String,
    content: json['content'] as String,
    category_id: json['category_id'] as int,
    release_range: json['release_range'] as int,
    release_date: json['release_date'] as String,
    created_at: json['created_at'] as String,
    update_at: json['update_at'] as String,
  );
}

Map<String, dynamic> _$_$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'category_id': instance.category_id,
      'release_range': instance.release_range,
      'release_date': instance.release_date,
      'created_at': instance.created_at,
      'update_at': instance.update_at,
    };
