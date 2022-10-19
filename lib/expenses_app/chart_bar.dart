import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar(
      {this.label = "",
      this.spendingAmount = 0.0,
      this.spendingTotal = 0.0,
      super.key});

  final String label;
  final double spendingAmount;
  final double spendingTotal;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 4,
      ),
      Text(label),
      SizedBox(
        height: 60,
        width: 10,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 1.0),
                  color: const Color.fromRGBO(220, 220, 200, 1),
                  borderRadius: BorderRadius.circular(10)),
            ),
            FractionallySizedBox(
              heightFactor: spendingTotal,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
      ),
      Text(
        spendingAmount.toString(),
        style: const TextStyle(fontSize: 6),
      ),
      const SizedBox(
        height: 4,
      )
    ]);
  }
}
