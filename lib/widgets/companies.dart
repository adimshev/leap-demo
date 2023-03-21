import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:leap_demo/models/company_model.dart';

class CompaniesChart extends StatefulWidget {
  final List<CompanyModel> companies;

  const CompaniesChart({
    super.key,
    required this.companies,
  });

  @override
  State<CompaniesChart> createState() => _CompaniesChartState();
}

class _CompaniesChartState extends State<CompaniesChart> {
  List<PieChartSectionData> sections = [];

  @override
  void initState() {
    super.initState();

    updateSections();
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);

    final companies = widget.companies;

    if (!listEquals(companies, oldWidget.companies)) {
      updateSections();
    }
  }

  void updateSections() {
    setState(() {
      sections = [];
      final companies = widget.companies;

      final sum = companies.fold(
        0,
        (res, e) => res + e.capitalization,
      );

      for (var i = 0; i < companies.length; i++) {
        final company = companies[i];
        final cap = company.capitalization;

        sections.add(
          PieChartSectionData(
            radius: 60,
            color: Colors.primaries[i * 2],
            value: company.capitalization.toDouble(),
            title: '${company.symbol} ${(cap / sum * 100).toStringAsFixed(2)}%',
            titleStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(1, 1),
                ),
                Shadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(-1, -1),
                ),
                Shadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(1, -1),
                ),
                Shadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(-1, 1),
                )
              ],
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(40),
          child: AspectRatio(
            aspectRatio: 1,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return PieChart(
                  PieChartData(
                    sections: sections,
                    centerSpaceRadius: constraints.minWidth / 4,
                    // pieTouchData: PieTouchData(
                    //   touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    //     if (!event.isInterestedForInteractions ||
                    //         pieTouchResponse == null ||
                    //         pieTouchResponse.touchedSection == null) {
                    //       return;
                    //     }

                    //     final index = pieTouchResponse
                    //         .touchedSection!.touchedSectionIndex;

                    //     if (index != -1) {
                    //       print(widget.companies[index].name);
                    //     }
                    //   },
                    // ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
