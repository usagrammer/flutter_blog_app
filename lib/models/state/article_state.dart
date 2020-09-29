// flutter pub pub run build_runner build

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'article_state.freezed.dart';
part 'article_state.g.dart';

@freezed
abstract class ArticleState with _$ArticleState {
  factory ArticleState({
    @Default(1) int id,
    @Default("ほげほげたいとる") String title,
    @Default("") String content,
    @Default(1) int category_id,
    @Default(0) int release_range,
    @Default("") String release_date,
    @Default("") String created_at,
    @Default("") String update_at,
    // @required int id,
    // @required String title,
    // @required String content,
    // @required int category_id,
    // @required int release_range,
    // @required String release_date,
    // @required String created_at,
    // @required String update_at,
  }) = _ArticleState;

  factory ArticleState.fromJson(Map<String, dynamic> json) =>
      _$ArticleStateFromJson(json);
}
