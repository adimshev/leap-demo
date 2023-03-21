import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap_demo/bloc/cubits/companies_cubit.dart';
import 'package:leap_demo/bloc/cubits/config_cubit.dart';
import 'package:leap_demo/bloc/state/companies_state.dart';
import 'package:leap_demo/helpers/display_snack_bar.dart';
import 'package:leap_demo/modals/api_key_dialog.dart';
import 'package:leap_demo/widgets/companies.dart';
import 'package:leap_demo/widgets/loader.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final apiKeyDialog = ApiKeyDialog();
  final symbols = const ['AAPL', 'AMZN', 'GOOG', 'MSFT', 'FB'];

  late final configCubit = context.read<ConfigCubit>();
  late final companiesCubit = context.read<CompaniesCubit>();

  Future<void> openApiKeyDialog() async {
    final apiKey = (await apiKeyDialog.show(
      context,
      configCubit.state.apiKey,
    ))
        ?.trim();

    configCubit.setApiKey(apiKey);

    if (apiKey != null && apiKey != '') {
      companiesCubit.fetchCompanies(symbols);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leap Demo'),
      ),
      body: BlocConsumer<CompaniesCubit, CompaniesState>(
          listener: (context, state) {
            final errorMessage = state.errorMessage;

            if (errorMessage != null) {
              dispalySnakBar(context, errorMessage);
            }
          },
          listenWhen: (prev, cur) => prev.errorMessage != cur.errorMessage,
          builder: (contex, state) {
            final companies = state.companies.values.toList();

            return Loader(
              isLoading: state.isLoading && state.companies.isEmpty,
              child: RefreshIndicator(
                onRefresh: () => companiesCubit.fetchCompanies(symbols),
                child: CustomScrollView(
                  slivers: [
                    if (companies.isEmpty) const SizedBox(),
                    if (companies.isNotEmpty)
                      SliverToBoxAdapter(
                        child: CompaniesChart(companies: companies),
                      ),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: openApiKeyDialog,
        tooltip: 'ApiKey Dialog',
        child: const Icon(Icons.settings),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
