import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:leap_demo/bloc/cubits/config_cubit.dart';
import 'package:leap_demo/bloc/state/companies_state.dart';
import 'package:leap_demo/models/company_model.dart';
import 'package:leap_demo/repositories/companies_repository.dart';

class CompaniesCubit extends HydratedCubit<CompaniesState> {
  final ConfigCubit configCubit;
  final CompaniesRepository companiesRepository;

  CompaniesCubit({
    required this.configCubit,
    required this.companiesRepository,
    required CompaniesState initialState,
  }) : super(initialState);

  Future<void> fetchCompanies(List<String> symbols) async {
    if (state.isLoading) {
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: null));
    final apiKey = configCubit.state.apiKey;

    final queries = await Future.wait(
      symbols.map(
        (symbol) => companiesRepository.fetchCompany(
          symbol,
          apiKey,
        ),
      ),
    );

    final Set<String> errorMessages = {};
    final Map<String, CompanyModel> companies = {...state.companies};

    for (final query in queries) {
      if (query.hasError) {
        errorMessages.add(query.errorMessage);
      } else {
        final company = query.result!;

        companies[company.symbol] = company;
      }
    }

    emit(state.copyWith(
      isLoading: false,
      companies: companies,
      errorMessage: errorMessages.isEmpty ? null : errorMessages.join('\n\n'),
    ));
  }

  @override
  toJson(state) => state.toJson();

  @override
  fromJson(json) => CompaniesState.fromJson(json);
}
