import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles_new_state.freezed.dart';
part 'articles_new_state.g.dart';

@freezed
abstract class ArticlesNewState with _$ArticlesNewState {
  factory ArticlesNewState({
    @Default(0) int index,
  }) = _ArticlesNewState;

  factory ArticlesNewState.fromJson(Map<String, dynamic> json) =>
      _$ArticlesNewStateFromJson(json);
}
