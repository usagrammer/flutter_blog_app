// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'article_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ArticleState _$ArticleStateFromJson(Map<String, dynamic> json) {
  return _ArticleState.fromJson(json);
}

class _$ArticleStateTearOff {
  const _$ArticleStateTearOff();

// ignore: unused_element
  _ArticleState call(
      {int id = 1,
      String title = 'ほげほげたいとる',
      String content = '',
      int category_id = 1,
      int release_range = 0,
      String release_date = '',
      String created_at = '',
      String update_at = ''}) {
    return _ArticleState(
      id: id,
      title: title,
      content: content,
      category_id: category_id,
      release_range: release_range,
      release_date: release_date,
      created_at: created_at,
      update_at: update_at,
    );
  }
}

// ignore: unused_element
const $ArticleState = _$ArticleStateTearOff();

mixin _$ArticleState {
  int get id;
  String get title;
  String get content;
  int get category_id;
  int get release_range;
  String get release_date;
  String get created_at;
  String get update_at;

  Map<String, dynamic> toJson();
  $ArticleStateCopyWith<ArticleState> get copyWith;
}

abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String content,
      int category_id,
      int release_range,
      String release_date,
      String created_at,
      String update_at});
}

class _$ArticleStateCopyWithImpl<$Res> implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  final ArticleState _value;
  // ignore: unused_field
  final $Res Function(ArticleState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object content = freezed,
    Object category_id = freezed,
    Object release_range = freezed,
    Object release_date = freezed,
    Object created_at = freezed,
    Object update_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
      category_id:
          category_id == freezed ? _value.category_id : category_id as int,
      release_range: release_range == freezed
          ? _value.release_range
          : release_range as int,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date as String,
      created_at:
          created_at == freezed ? _value.created_at : created_at as String,
      update_at: update_at == freezed ? _value.update_at : update_at as String,
    ));
  }
}

abstract class _$ArticleStateCopyWith<$Res>
    implements $ArticleStateCopyWith<$Res> {
  factory _$ArticleStateCopyWith(
          _ArticleState value, $Res Function(_ArticleState) then) =
      __$ArticleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String content,
      int category_id,
      int release_range,
      String release_date,
      String created_at,
      String update_at});
}

class __$ArticleStateCopyWithImpl<$Res> extends _$ArticleStateCopyWithImpl<$Res>
    implements _$ArticleStateCopyWith<$Res> {
  __$ArticleStateCopyWithImpl(
      _ArticleState _value, $Res Function(_ArticleState) _then)
      : super(_value, (v) => _then(v as _ArticleState));

  @override
  _ArticleState get _value => super._value as _ArticleState;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object content = freezed,
    Object category_id = freezed,
    Object release_range = freezed,
    Object release_date = freezed,
    Object created_at = freezed,
    Object update_at = freezed,
  }) {
    return _then(_ArticleState(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
      category_id:
          category_id == freezed ? _value.category_id : category_id as int,
      release_range: release_range == freezed
          ? _value.release_range
          : release_range as int,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date as String,
      created_at:
          created_at == freezed ? _value.created_at : created_at as String,
      update_at: update_at == freezed ? _value.update_at : update_at as String,
    ));
  }
}

@JsonSerializable()
class _$_ArticleState with DiagnosticableTreeMixin implements _ArticleState {
  _$_ArticleState(
      {this.id = 1,
      this.title = 'ほげほげたいとる',
      this.content = '',
      this.category_id = 1,
      this.release_range = 0,
      this.release_date = '',
      this.created_at = '',
      this.update_at = ''})
      : assert(id != null),
        assert(title != null),
        assert(content != null),
        assert(category_id != null),
        assert(release_range != null),
        assert(release_date != null),
        assert(created_at != null),
        assert(update_at != null);

  factory _$_ArticleState.fromJson(Map<String, dynamic> json) =>
      _$_$_ArticleStateFromJson(json);

  @JsonKey(defaultValue: 1)
  @override
  final int id;
  @JsonKey(defaultValue: 'ほげほげたいとる')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String content;
  @JsonKey(defaultValue: 1)
  @override
  final int category_id;
  @JsonKey(defaultValue: 0)
  @override
  final int release_range;
  @JsonKey(defaultValue: '')
  @override
  final String release_date;
  @JsonKey(defaultValue: '')
  @override
  final String created_at;
  @JsonKey(defaultValue: '')
  @override
  final String update_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArticleState(id: $id, title: $title, content: $content, category_id: $category_id, release_range: $release_range, release_date: $release_date, created_at: $created_at, update_at: $update_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArticleState'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('category_id', category_id))
      ..add(DiagnosticsProperty('release_range', release_range))
      ..add(DiagnosticsProperty('release_date', release_date))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('update_at', update_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticleState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.category_id, category_id) ||
                const DeepCollectionEquality()
                    .equals(other.category_id, category_id)) &&
            (identical(other.release_range, release_range) ||
                const DeepCollectionEquality()
                    .equals(other.release_range, release_range)) &&
            (identical(other.release_date, release_date) ||
                const DeepCollectionEquality()
                    .equals(other.release_date, release_date)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.update_at, update_at) ||
                const DeepCollectionEquality()
                    .equals(other.update_at, update_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(category_id) ^
      const DeepCollectionEquality().hash(release_range) ^
      const DeepCollectionEquality().hash(release_date) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(update_at);

  @override
  _$ArticleStateCopyWith<_ArticleState> get copyWith =>
      __$ArticleStateCopyWithImpl<_ArticleState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArticleStateToJson(this);
  }
}

abstract class _ArticleState implements ArticleState {
  factory _ArticleState(
      {int id,
      String title,
      String content,
      int category_id,
      int release_range,
      String release_date,
      String created_at,
      String update_at}) = _$_ArticleState;

  factory _ArticleState.fromJson(Map<String, dynamic> json) =
      _$_ArticleState.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  int get category_id;
  @override
  int get release_range;
  @override
  String get release_date;
  @override
  String get created_at;
  @override
  String get update_at;
  @override
  _$ArticleStateCopyWith<_ArticleState> get copyWith;
}
