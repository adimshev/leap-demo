// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyModel _$$_CompanyModelFromJson(Map<String, dynamic> json) =>
    _$_CompanyModel(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      currency: json['currency'] as String,
      capitalization: json['capitalization'] as int,
    );

Map<String, dynamic> _$$_CompanyModelToJson(_$_CompanyModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'description': instance.description,
      'currency': instance.currency,
      'capitalization': instance.capitalization,
    };
