// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'articles_new_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ArticlesNewState _$ArticlesNewStateFromJson(Map<String, dynamic> json) {
  return _ArticlesNewState.fromJson(json);
}

class _$ArticlesNewStateTearOff {
  const _$ArticlesNewStateTearOff();

// ignore: unused_element
  _ArticlesNewState call({int index = 0}) {
    return _ArticlesNewState(
      index: index,
    );
  }
}

// ignore: unused_element
const $ArticlesNewState = _$ArticlesNewStateTearOff();

mixin _$ArticlesNewState {
  int get index;

  Map<String, dynamic> toJson();
  $ArticlesNewStateCopyWith<ArticlesNewState> get copyWith;
}

abstract class $ArticlesNewStateCopyWith<$Res> {
  factory $ArticlesNewStateCopyWith(
          ArticlesNewState value, $Res Function(ArticlesNewState) then) =
      _$ArticlesNewStateCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$ArticlesNewStateCopyWithImpl<$Res>
    implements $ArticlesNewStateCopyWith<$Res> {
  _$ArticlesNewStateCopyWithImpl(this._value, this._then);

  final ArticlesNewState _value;
  // ignore: unused_field
  final $Res Function(ArticlesNewState) _then;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

abstract class _$ArticlesNewStateCopyWith<$Res>
    implements $ArticlesNewStateCopyWith<$Res> {
  factory _$ArticlesNewStateCopyWith(
          _ArticlesNewState value, $Res Function(_ArticlesNewState) then) =
      __$ArticlesNewStateCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class __$ArticlesNewStateCopyWithImpl<$Res>
    extends _$ArticlesNewStateCopyWithImpl<$Res>
    implements _$ArticlesNewStateCopyWith<$Res> {
  __$ArticlesNewStateCopyWithImpl(
      _ArticlesNewState _value, $Res Function(_ArticlesNewState) _then)
      : super(_value, (v) => _then(v as _ArticlesNewState));

  @override
  _ArticlesNewState get _value => super._value as _ArticlesNewState;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_ArticlesNewState(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

@JsonSerializable()
class _$_ArticlesNewState
    with DiagnosticableTreeMixin
    implements _ArticlesNewState {
  _$_ArticlesNewState({this.index = 0}) : assert(index != null);

  factory _$_ArticlesNewState.fromJson(Map<String, dynamic> json) =>
      _$_$_ArticlesNewStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArticlesNewState(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArticlesNewState'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticlesNewState &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$ArticlesNewStateCopyWith<_ArticlesNewState> get copyWith =>
      __$ArticlesNewStateCopyWithImpl<_ArticlesNewState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArticlesNewStateToJson(this);
  }
}

abstract class _ArticlesNewState implements ArticlesNewState {
  factory _ArticlesNewState({int index}) = _$_ArticlesNewState;

  factory _ArticlesNewState.fromJson(Map<String, dynamic> json) =
      _$_ArticlesNewState.fromJson;

  @override
  int get index;
  @override
  _$ArticlesNewStateCopyWith<_ArticlesNewState> get copyWith;
}
