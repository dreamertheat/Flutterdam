import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/common/styles.dart';
import 'package:flutter_complete_guide/expenses_app/transaction.dart';
import 'package:intl/intl.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key, required this.tx});

  final Transaction tx;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  )),
              child: Text(
                "\$${tx.amount.toString()}",
                style: Styles.commonText(fontSize: 15, color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.title,
                  style: Styles.commonText(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat.yMMMMEEEEd().format(tx.date),
                  style: Styles.commonText(fontSize: 9),
                )
              ],
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  tx.delete();
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ))
          ],
        ),
      ),
    ));
  }
}
