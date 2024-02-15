import 'individual_bar.dart';

class BarData {
  final double sunAmt;
  final double monAmt;
  final double tueAmt;
  final double wedAmt;
  final double thuAmt;
  final double friAmt;
  final double satAmt;

  BarData(
      {required this.sunAmt,
      required this.monAmt,
      required this.tueAmt,
      required this.wedAmt,
      required this.thuAmt,
      required this.friAmt,
      required this.satAmt});

  List<IndividualBar> barData = [];

  void initBarData(){
    barData = [
      IndividualBar(x: 0, y: sunAmt),
      IndividualBar(x: 1, y: monAmt),
      IndividualBar(x: 2, y: tueAmt),
      IndividualBar(x: 3, y: wedAmt),
      IndividualBar(x: 4, y: thuAmt),
      IndividualBar(x: 5, y: friAmt),
      IndividualBar(x: 6, y: satAmt),
    ];
  }
}
