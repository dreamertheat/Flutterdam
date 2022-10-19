import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/expenses_app/transaction.dart';
import 'package:intl/intl.dart';

import 'chart_bar.dart';

class Chart extends StatefulWidget {
  const Chart({super.key, required this.recentTransactions});

  final List<Transaction> recentTransactions;

  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0.0;

      for (var i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].date.day == weekDay.day &&
            recentTransactions[i].date.month == weekDay.month &&
            recentTransactions[i].date.year == weekDay.year) {
          totalSum += recentTransactions[i].amount;
        }
      }

      //print(DateFormat())

      return {
        'day': DateFormat.E().format(weekDay).substring(0, 3),
        'amount': totalSum
      };
    });
  }

  double get maxSpending {
    return groupedTransactionValues.fold(0.0, (pv, element) {
      return pv + double.parse(element['amount'].toString());
    });
  }

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widget.groupedTransactionValues.map((e) {
          return Flexible(
            fit: FlexFit.tight,
            child: ChartBar(
              label: e['day'].toString(),
              spendingAmount: e['amount'] as double,
              spendingTotal: (e['amount'] == 0.0)
                  ? 0.0
                  : (e['amount'] as double) / widget.maxSpending,
            ),
          );
        }).toList(),
      ),
    );
  }
}
