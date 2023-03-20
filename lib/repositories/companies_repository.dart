import 'package:leap_demo/config.dart';
import 'package:leap_demo/models/company_model.dart';
import 'package:leap_demo/repositories/repository_result.dart';
import 'package:leap_demo/services/api_service.dart';

class CompaniesRepository {
  final ApiService apiService;

  CompaniesRepository(this.apiService);

  Future<Map<String, dynamic>> fetchCompanies() async {
    return {};
  }

  Future<RepositoryResult<CompanyModel>> fetchCompany(String symbol) async {
    try {
      final result = await apiService.get<Map<String, dynamic>>(
        ApiPaths.query,
        queryParameters: {
          'function': 'OVERVIEW',
          'symbol': symbol,
          'apikey': Config.apiKey,
        },
      );

      final data = result.data;

      if (data == null) {
        return const RepositoryResult.withError();
      }

      final company = CompanyModel.tryFromApi(data);

      if (company == null) {
        return RepositoryResult.withError(data['Information'] ?? data['Info']);
      }

      return RepositoryResult.withSuccess(company);
    } catch (e) {
      return RepositoryResult.withError(e.toString());
    }
  }
}
