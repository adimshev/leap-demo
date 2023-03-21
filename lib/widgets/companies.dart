import 'package:flutter/material.dart';
import 'package:leap_demo/models/company_model.dart';

class Companies extends StatelessWidget {
  final List<CompanyModel> companies;

  const Companies({
    super.key,
    required this.companies,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
    // return Column(children: companies.map((e) => e.copyWith(description: '').toString()));
  }
}
