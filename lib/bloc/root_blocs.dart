import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap_demo/bloc/cubits/companies_cubit.dart';
import 'package:leap_demo/bloc/state/companies_state.dart';
import 'package:leap_demo/repositories/companies_repository.dart';
import 'package:leap_demo/services/api_service.dart';

class RootBlocs {
  static List<BlocProvider> providers = [
    BlocProvider(
      create: (context) => CompaniesCubit(
        companiesRepository: CompaniesRepository(
          ApiService(),
        ),
        initialState: CompaniesState.initial(),
      ),
      lazy: false,
    )
  ];
}
