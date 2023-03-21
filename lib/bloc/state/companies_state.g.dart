// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompaniesState _$$_CompaniesStateFromJson(Map<String, dynamic> json) =>
    _$_CompaniesState(
      companies: (json['companies'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, CompanyModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_CompaniesStateToJson(_$_CompaniesState instance) =>
    <String, dynamic>{
      'companies': instance.companies,
    };
