import 'package:bar_graph/bar_chart/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;

  const MyBarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData myData = BarData(
        sunAmt: weeklySummary[0],
        monAmt: weeklySummary[1],
        tueAmt: weeklySummary[2],
        wedAmt: weeklySummary[3],
        thuAmt: weeklySummary[4],
        friAmt: weeklySummary[5],
        satAmt: weeklySummary[6]);

    myData.initBarData();

    return BarChart(BarChartData(
        maxY: 100,
        minY: 0,
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))
        ),
        barGroups: myData.barData
            .map((data) => BarChartGroupData(x: data.x, barRods: [
                  BarChartRodData(
                      toY: data.y,
                      color: Colors.black,
                      width: 24,
                      borderRadius: BorderRadius.circular(2)),
                ]))
            .toList()));
  }
}
