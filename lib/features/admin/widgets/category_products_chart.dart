import 'package:final_project/features/admin/models/sales.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CategoryProductsChart extends StatelessWidget {
  final List<Sales> salesData;
  const CategoryProductsChart({
    Key? key,
    required this.salesData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(labelPlacement: LabelPlacement.onTicks),
      series: <BarSeries<Sales, String>>[
        BarSeries<Sales, String>(
          dataSource: salesData,
          xValueMapper: (Sales sales, _) => sales
              .label, // Make sure this matches the 'label' property in your Sales model
          yValueMapper: (Sales sales, _) => sales.earning,
          dataLabelSettings: DataLabelSettings(isVisible: true),
        )
      ],
      enableAxisAnimation: true,
    );
  }
}
