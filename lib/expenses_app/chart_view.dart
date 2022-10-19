import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_guide/common/basic_textfield.dart';
import 'package:flutter_complete_guide/common/constants.dart';
import 'package:flutter_complete_guide/expenses_app/transaction.dart';
import 'package:intl/intl.dart';

class ChartView extends StatefulWidget {
  const ChartView(
      {super.key,
      required this.addTransaction,
      required this.deleteTransaction});
  final Function addTransaction;
  final Function deleteTransaction;
  @override
  State<ChartView> createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView> {
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  DateTime? _selectedDate;

  bool checkValid() {
    return _selectedDate != null &&
        amountController.text.isNotEmpty &&
        titleController.text.isNotEmpty;
  }

  void addData() {
    if (checkValid()) {
      var x = Transaction.customDate(
          id: titleController.text,
          title: titleController.text,
          date: _selectedDate!,
          delete: () {
            widget.deleteTransaction(Transaction(id: titleController.text));
          },
          amount: double.parse(amountController.text));
      widget.addTransaction(x);
      Navigator.of(context).pop();
    } else {
      print("not valid");
    }
  }

  void datePiceer(BuildContext c) {
    showDatePicker(
            context: c,
            initialDate: DateTime.now(),
            firstDate: DateTime(2022),
            lastDate: DateTime(2023))
        .then((date) {
      if (date == null) {
        return;
      } else {
        setState(() {
          _selectedDate = date;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BasicTextField(
            title: "Title",
            placeholder: "enter title",
            controller: titleController,
            updateController: (controller) {
              setState(() {
                titleController.text = controller;
                if (kDebugMode) {
                  print(titleController.text);
                }
              });
            },
            onSubmit: () {
              addData();
            },
          ),
          BasicTextField.input(
            title: "Amount",
            placeholder: "enter amount",
            controller: amountController,
            inputType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatter: [
              FilteringTextInputFormatter.allow(
                  RegExp(Constants.decimalRegex()))
            ],
            updateController: (controller) {
              setState(() {
                amountController.text = controller;
              });
            },
            onSubmit: () {
              addData();
            },
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          if (_selectedDate != null)
            Text(DateFormat.yMMMMEEEEd().format(_selectedDate!)),
          ElevatedButton(
              onPressed: () {
                datePiceer(context);
              },
              child: const Text(
                'Choose Date',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          TextButton(
              onPressed: () {
                addData();
              },
              child: const Text("Add Transaction"))
        ],
      ),
    );
  }
}
