// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigState _$ConfigStateFromJson(Map<String, dynamic> json) {
  return _ConfigState.fromJson(json);
}

/// @nodoc
mixin _$ConfigState {
  String get apiKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigStateCopyWith<ConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigStateCopyWith<$Res> {
  factory $ConfigStateCopyWith(
          ConfigState value, $Res Function(ConfigState) then) =
      _$ConfigStateCopyWithImpl<$Res, ConfigState>;
  @useResult
  $Res call({String apiKey});
}

/// @nodoc
class _$ConfigStateCopyWithImpl<$Res, $Val extends ConfigState>
    implements $ConfigStateCopyWith<$Res> {
  _$ConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigStateCopyWith<$Res>
    implements $ConfigStateCopyWith<$Res> {
  factory _$$_ConfigStateCopyWith(
          _$_ConfigState value, $Res Function(_$_ConfigState) then) =
      __$$_ConfigStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey});
}

/// @nodoc
class __$$_ConfigStateCopyWithImpl<$Res>
    extends _$ConfigStateCopyWithImpl<$Res, _$_ConfigState>
    implements _$$_ConfigStateCopyWith<$Res> {
  __$$_ConfigStateCopyWithImpl(
      _$_ConfigState _value, $Res Function(_$_ConfigState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
  }) {
    return _then(_$_ConfigState(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfigState extends _ConfigState {
  const _$_ConfigState({required this.apiKey}) : super._();

  factory _$_ConfigState.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigStateFromJson(json);

  @override
  final String apiKey;

  @override
  String toString() {
    return 'ConfigState(apiKey: $apiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigState &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigStateCopyWith<_$_ConfigState> get copyWith =>
      __$$_ConfigStateCopyWithImpl<_$_ConfigState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigStateToJson(
      this,
    );
  }
}

abstract class _ConfigState extends ConfigState {
  const factory _ConfigState({required final String apiKey}) = _$_ConfigState;
  const _ConfigState._() : super._();

  factory _ConfigState.fromJson(Map<String, dynamic> json) =
      _$_ConfigState.fromJson;

  @override
  String get apiKey;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigStateCopyWith<_$_ConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}
