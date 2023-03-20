// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompaniesState _$CompaniesStateFromJson(Map<String, dynamic> json) {
  return _CompaniesState.fromJson(json);
}

/// @nodoc
mixin _$CompaniesState {
  Map<String, CompanyModel> get companies => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompaniesStateCopyWith<CompaniesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompaniesStateCopyWith<$Res> {
  factory $CompaniesStateCopyWith(
          CompaniesState value, $Res Function(CompaniesState) then) =
      _$CompaniesStateCopyWithImpl<$Res, CompaniesState>;
  @useResult
  $Res call({Map<String, CompanyModel> companies, bool isLoading});
}

/// @nodoc
class _$CompaniesStateCopyWithImpl<$Res, $Val extends CompaniesState>
    implements $CompaniesStateCopyWith<$Res> {
  _$CompaniesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companies = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      companies: null == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as Map<String, CompanyModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompaniesStateCopyWith<$Res>
    implements $CompaniesStateCopyWith<$Res> {
  factory _$$_CompaniesStateCopyWith(
          _$_CompaniesState value, $Res Function(_$_CompaniesState) then) =
      __$$_CompaniesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, CompanyModel> companies, bool isLoading});
}

/// @nodoc
class __$$_CompaniesStateCopyWithImpl<$Res>
    extends _$CompaniesStateCopyWithImpl<$Res, _$_CompaniesState>
    implements _$$_CompaniesStateCopyWith<$Res> {
  __$$_CompaniesStateCopyWithImpl(
      _$_CompaniesState _value, $Res Function(_$_CompaniesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companies = null,
    Object? isLoading = null,
  }) {
    return _then(_$_CompaniesState(
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as Map<String, CompanyModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompaniesState extends _CompaniesState {
  const _$_CompaniesState(
      {required final Map<String, CompanyModel> companies,
      required this.isLoading})
      : _companies = companies,
        super._();

  factory _$_CompaniesState.fromJson(Map<String, dynamic> json) =>
      _$$_CompaniesStateFromJson(json);

  final Map<String, CompanyModel> _companies;
  @override
  Map<String, CompanyModel> get companies {
    if (_companies is EqualUnmodifiableMapView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_companies);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CompaniesState(companies: $companies, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompaniesState &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_companies), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompaniesStateCopyWith<_$_CompaniesState> get copyWith =>
      __$$_CompaniesStateCopyWithImpl<_$_CompaniesState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompaniesStateToJson(
      this,
    );
  }
}

abstract class _CompaniesState extends CompaniesState {
  const factory _CompaniesState(
      {required final Map<String, CompanyModel> companies,
      required final bool isLoading}) = _$_CompaniesState;
  const _CompaniesState._() : super._();

  factory _CompaniesState.fromJson(Map<String, dynamic> json) =
      _$_CompaniesState.fromJson;

  @override
  Map<String, CompanyModel> get companies;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CompaniesStateCopyWith<_$_CompaniesState> get copyWith =>
      throw _privateConstructorUsedError;
}
