import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/expenses_app/transaction_list.dart';

import 'chart.dart';
import 'chart_view.dart';
import 'transaction.dart';

class TransactionMain extends StatefulWidget {
  const TransactionMain({super.key});

  @override
  State<TransactionMain> createState() => _TransactionMainState();
}

class _TransactionMainState extends State<TransactionMain> {
  List<Transaction> transactions = [];

  //Transaction(id: "t1", title: "New shoes", amount: 69.99),
  //  Transaction(id: "t2", title: "Boxer shorts", amount: 121.99)

  void addTransaction(Transaction t) {
    setState(() {
      transactions.add(t);
    });
  }

  void deleteTransaction(Transaction t) {
    setState(() {
      transactions.removeWhere((e) {
        return e.id == t.id;
      });
    });
  }

  List<Transaction> get recentTransactions {
    return transactions.where((tx) {
      return tx.date.isAfter(
        DateTime.now().subtract(
          const Duration(days: 7),
        ),
      );
    }).toList();
  }

  void showFields(BuildContext ctx) {
    if (kDebugMode) {
      print("shown");
    }

    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        context: context,
        isScrollControlled: true,
        builder: (ctx) {
          return SizedBox(
            height: 400,
            child: ChartView(
              addTransaction: (newtx) {
                addTransaction(newtx);
              },
              deleteTransaction: (del) {
                deleteTransaction(del);
              },
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter App',
            style: TextStyle(fontFamily: 'Roboto'),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showFields(context);
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Card(
                color: Colors.blue,
                elevation: 5,
                child: SizedBox(
                  width: double.infinity,
                  child: Chart(
                    recentTransactions: recentTransactions,
                  ),
                ),
              ),
              (transactions.isNotEmpty)
                  ? TransactionList(
                      transactions: transactions,
                    )
                  : Column(
                      children: [
                        Image.asset(
                          'assets/images/sleeping.png',
                          fit: BoxFit.cover,
                        ),
                        const Text('No Transactions to display!'),
                      ],
                    )
            ])),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_circle),
          onPressed: () {
            print("ASD");
            showFields(context);
          },
        ),
      ),
    );
  }
}
