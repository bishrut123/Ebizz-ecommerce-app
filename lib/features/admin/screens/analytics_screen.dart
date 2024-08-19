import 'package:final_project/common/widgets/loader.dart';
import 'package:final_project/features/admin/models/sales.dart';
import 'package:final_project/features/admin/services/admin_services.dart';
import 'package:final_project/features/admin/widgets/category_products_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  final AdminServices adminServices = AdminServices();
  int? totalSales;
  List<Sales>? earnings;

  @override
  void initState() {
    super.initState();
    getEarnings();
  }

  getEarnings() async {
    var earningData = await adminServices.getEarnings(context);
    totalSales = earningData['totalEarnings'];
    earnings = earningData['sales'];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return earnings == null || totalSales == null
        ? const Loader()
        : Column(
            children: [
              Text(
                'Rs.$totalSales',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 250,
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  series: <BarSeries<Sales, String>>[
                    BarSeries<Sales, String>(
                      dataSource: earnings!,
                      xValueMapper: (Sales sales, _) =>
                          sales.label, // Replace with the appropriate field
                      yValueMapper: (Sales sales, _) =>
                          sales.earning, // Replace with the appropriate field
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    )
                  ],
                  enableAxisAnimation: true, // Animation
                ),
              )
            ],
          );
  }
}
