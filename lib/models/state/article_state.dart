// flutter pub pub run build_runner build

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'article_state.freezed.dart';
part 'article_state.g.dart';

@freezed
abstract class ArticleState with _$ArticleState {
  factory ArticleState({
    @required int id,
    @required String title,
    @required String content,
    @required int category_id,
    @required int release_range,
    @required String release_date,
    @required String created_at,
    @required String update_at,
  }) = _ArticleState;

  factory ArticleState.fromJson(Map<String, dynamic> json) =>
      _$ArticleStateFromJson(json);
}
