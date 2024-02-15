import 'package:bar_graph/bar_chart/bar_graph.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<double> weeklySummary = [
    4.40,
    10.00,
    20.99,
    30.70,
    50.30,
    90.00,
    92.00,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bar Graph"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: SizedBox(
            height: 300,
              child: MyBarGraph(weeklySummary: weeklySummary,)),
        ),
      ),
    );
  }
}
