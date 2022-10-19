import 'package:flutter/material.dart';

import 'transaction.dart';
import 'transaction_view.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key, required this.transactions});
  final List<Transaction> transactions;

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: widget.transactions.length,
          itemBuilder: (BuildContext context, int index) {
            return TransactionView(
              tx: widget.transactions[index],
            );
          }),
    );
  }
}

//ListView(
      //   children: widget.transactions.map((e) {
      //     return TransactionView(
      //       tx: e,
      //     );
      //   }).toList(),
      // )
