// flutter pub pub run build_runner build

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
abstract class Article with _$Article {
  factory Article({
    @required int id,
    @required String title,
    @required String content,
    @required int category_id,
    @required int release_range,
    @required String release_date,
    @required String created_at,
    @required String update_at,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
