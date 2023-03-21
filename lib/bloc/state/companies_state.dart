import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leap_demo/models/company_model.dart';

part 'companies_state.freezed.dart';
part 'companies_state.g.dart';

@freezed
class CompaniesState with _$CompaniesState {
  const CompaniesState._();

  const factory CompaniesState({
    required Map<String, CompanyModel> companies,
    @JsonKey(ignore: true) @Default(false) bool isLoading,
    @JsonKey(ignore: true) String? errorMessage,
  }) = _CompaniesState;

  factory CompaniesState.fromJson(Map<String, dynamic> json) =>
      _$CompaniesStateFromJson(json);

  factory CompaniesState.initial() {
    return const CompaniesState(companies: {});
  }
}
