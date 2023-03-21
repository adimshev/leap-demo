import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap_demo/bloc/cubits/companies_cubit.dart';
import 'package:leap_demo/bloc/cubits/config_cubit.dart';
import 'package:leap_demo/bloc/state/companies_state.dart';
import 'package:leap_demo/bloc/state/config_state.dart';
import 'package:leap_demo/config.dart';
import 'package:leap_demo/repositories/companies_repository.dart';
import 'package:leap_demo/services/api_service.dart';

class RootBlocs {
  static List<BlocProvider> get providers => [
        BlocProvider<ConfigCubit>(
          create: (context) => ConfigCubit(
            initialState: ConfigState.initial(Config.apiKey),
          ),
          lazy: false,
        ),
        BlocProvider<CompaniesCubit>(
          create: (context) => CompaniesCubit(
            configCubit: context.read<ConfigCubit>(),
            companiesRepository: CompaniesRepository(
              ApiService(),
            ),
            initialState: CompaniesState.initial(),
          ),
          lazy: false,
        ),
      ];
}
