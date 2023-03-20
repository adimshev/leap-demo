import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap_demo/bloc/state/companies_state.dart';
import 'package:leap_demo/repositories/companies_repository.dart';

class CompaniesCubit extends Cubit<CompaniesState> {
  final CompaniesRepository companiesRepository;

  CompaniesCubit({
    required this.companiesRepository,
    required CompaniesState initialState,
  }) : super(initialState) {
    companiesRepository.fetchCompany('AMZN').then((value) {
      if (value.hasError) {
        debugPrint(value.errorMessage);
      }
    });
  }
}
