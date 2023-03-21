import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap_demo/bloc/cubits/companies_cubit.dart';
import 'package:leap_demo/bloc/cubits/config_cubit.dart';
import 'package:leap_demo/bloc/state/companies_state.dart';
import 'package:leap_demo/helpers/display_snack_bar.dart';
import 'package:leap_demo/modals/api_key_dialog.dart';
import 'package:leap_demo/models/company_model.dart';
import 'package:leap_demo/screens/company_screen.dart';
import 'package:leap_demo/widgets/companies.dart';
import 'package:leap_demo/widgets/loader.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final apiKeyDialog = ApiKeyDialog();
  final symbols = const ['AAPL', 'AMZN', 'GOOG', 'MSFT', 'IBM'];

  late final configCubit = context.read<ConfigCubit>();
  late final companiesCubit = context.read<CompaniesCubit>();

  @override
  void initState() {
    super.initState();

    fetchCompanies();
  }

  Future<void> openApiKeyDialog() async {
    final apiKey = (await apiKeyDialog.show(
      context,
      configCubit.state.apiKey,
    ))
        ?.trim();

    if (apiKey != null && apiKey != '') {
      configCubit.setApiKey(apiKey);

      fetchCompanies();
    }
  }

  Future<void> fetchCompanies() {
    return companiesCubit.fetchCompanies(symbols);
  }

  Future<void> openCompany(CompanyModel company) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CompanyScrren(company: company),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leap Demo'),
        actions: !kIsWeb
            ? null
            : [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    onPressed: fetchCompanies,
                    icon: const Icon(Icons.refresh),
                  ),
                )
              ],
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
                onRefresh: fetchCompanies,
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: companies.isEmpty
                          ? const SizedBox()
                          : CompaniesChart(
                              companies: companies,
                              onTapCompany: openCompany,
                            ),
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
