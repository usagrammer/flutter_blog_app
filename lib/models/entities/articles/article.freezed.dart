// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

class _$ArticleTearOff {
  const _$ArticleTearOff();

// ignore: unused_element
  _Article call(
      {@required int id,
      @required String title,
      @required String content,
      @required int category_id,
      @required int release_range,
      @required String release_date,
      @required String created_at,
      @required String update_at}) {
    return _Article(
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
const $Article = _$ArticleTearOff();

mixin _$Article {
  int get id;
  String get title;
  String get content;
  int get category_id;
  int get release_range;
  String get release_date;
  String get created_at;
  String get update_at;

  Map<String, dynamic> toJson();
  $ArticleCopyWith<Article> get copyWith;
}

abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res>;
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

class _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  final Article _value;
  // ignore: unused_field
  final $Res Function(Article) _then;

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

abstract class _$ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) then) =
      __$ArticleCopyWithImpl<$Res>;
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

class __$ArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(_Article _value, $Res Function(_Article) _then)
      : super(_value, (v) => _then(v as _Article));

  @override
  _Article get _value => super._value as _Article;

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
    return _then(_Article(
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
class _$_Article with DiagnosticableTreeMixin implements _Article {
  _$_Article(
      {@required this.id,
      @required this.title,
      @required this.content,
      @required this.category_id,
      @required this.release_range,
      @required this.release_date,
      @required this.created_at,
      @required this.update_at})
      : assert(id != null),
        assert(title != null),
        assert(content != null),
        assert(category_id != null),
        assert(release_range != null),
        assert(release_date != null),
        assert(created_at != null),
        assert(update_at != null);

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$_$_ArticleFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final int category_id;
  @override
  final int release_range;
  @override
  final String release_date;
  @override
  final String created_at;
  @override
  final String update_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Article(id: $id, title: $title, content: $content, category_id: $category_id, release_range: $release_range, release_date: $release_date, created_at: $created_at, update_at: $update_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Article'))
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
        (other is _Article &&
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
  _$ArticleCopyWith<_Article> get copyWith =>
      __$ArticleCopyWithImpl<_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArticleToJson(this);
  }
}

abstract class _Article implements Article {
  factory _Article(
      {@required int id,
      @required String title,
      @required String content,
      @required int category_id,
      @required int release_range,
      @required String release_date,
      @required String created_at,
      @required String update_at}) = _$_Article;

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

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
  _$ArticleCopyWith<_Article> get copyWith;
}
