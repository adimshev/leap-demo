import 'package:flutter/material.dart';
import 'package:leap_demo/helpers/extensions/string_extension.dart';
import 'package:leap_demo/models/company_model.dart';

class CompanyScrren extends StatelessWidget {
  final CompanyModel company;

  const CompanyScrren({
    super.key,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    final capitalization = company.capitalization.toString().toPrice(
          company.currency,
        );

    return Scaffold(
      appBar: AppBar(
        title: Text(company.symbol),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: Text(
                company.name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                company.description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Capitalization:\n$capitalization',
                textAlign: TextAlign.end,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
