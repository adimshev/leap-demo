import 'package:leap_demo/models/company_model.dart';
import 'package:leap_demo/repositories/repository_result.dart';
import 'package:leap_demo/services/api_service.dart';

class CompaniesRepository {
  final ApiService apiService;

  CompaniesRepository(this.apiService);

  Future<RepositoryResult<CompanyModel>> fetchCompany(
    String symbol,
    String apikey,
  ) async {
    try {
      final result = await apiService.get<Map<String, dynamic>>(
        ApiPaths.query,
        queryParameters: {
          'function': 'OVERVIEW',
          'symbol': symbol,
          'apikey': apikey,
        },
      );

      final data = result.data;

      if (data == null) {
        return const RepositoryResult.withError();
      }

      final company = CompanyModel.tryFromApi(data);

      if (company == null) {
        return RepositoryResult.withError(data['Information'] ?? data['Note']);
      }

      return RepositoryResult.withSuccess(company);
    } catch (e) {
      return RepositoryResult.withError(e.toString());
    }
  }
}
