import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
class CompanyModel with _$CompanyModel {
  static CompanyModel? tryFromApi(Map<String, dynamic> json) {
    try {
      return CompanyModel.fromApi(json);
    } catch (err) {
      debugPrint(err.toString());

      return null;
    }
  }

  const CompanyModel._();

  const factory CompanyModel({
    required String symbol,
    required String name,
    required String description,
    required String currency,
    required int capitalization,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  factory CompanyModel.fromApi(Map<String, dynamic> json) {
    return CompanyModel(
      symbol: json['Symbol'],
      name: json['Name'] ?? '',
      description: json['Description'] ?? '',
      currency: json['Currency'] ?? '',
      capitalization: int.tryParse(json['MarketCapitalization'] ?? '') ?? -1,
    );
  }
}
