// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleState _$_$_ArticleStateFromJson(Map<String, dynamic> json) {
  return _$_ArticleState(
    id: json['id'] as int ?? -1,
    title: json['title'] as String ?? 'ほげほげたいとる',
    content: json['content'] as String ?? '',
    image: json['image'] ?? '',
    category_id: json['category_id'] as int ?? 1,
    release_range: json['release_range'] as int ?? 0,
    release_date: json['release_date'] as String ?? '',
    created_at: json['created_at'] as String ?? '',
    update_at: json['update_at'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_ArticleStateToJson(_$_ArticleState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'image': instance.image,
      'category_id': instance.category_id,
      'release_range': instance.release_range,
      'release_date': instance.release_date,
      'created_at': instance.created_at,
      'update_at': instance.update_at,
    };
