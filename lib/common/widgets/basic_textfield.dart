import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_guide/common/constants/styles.dart';

// ignore: must_be_immutable
class BasicTextField extends StatefulWidget {
  BasicTextField(
      {super.key,
      this.placeholder = "",
      this.title = "",
      this.fontColor = Colors.black,
      this.fontSize = 16,
      required this.controller,
      required this.onSubmit,
      required this.updateController});

  BasicTextField.input(
      {super.key,
      this.placeholder = "",
      this.title = "",
      this.fontColor = Colors.black,
      this.fontSize = 16,
      required this.inputType,
      required this.inputFormatter,
      required this.controller,
      required this.onSubmit,
      required this.updateController});

  BasicTextField.custom(
      {super.key,
      this.placeholder = "",
      this.title = "",
      this.fontColor = Colors.black,
      this.fontSize = 16,
      this.padding,
      this.margin,
      this.style,
      required this.onSubmit,
      required this.controller,
      required this.updateController});

  final String placeholder;
  final String title;
  final double fontSize;
  final Color fontColor;
  final TextEditingController controller;
  final Function updateController;
  final Function onSubmit;
  TextStyle? style = Styles.commonText();
  EdgeInsetsGeometry? padding = const EdgeInsets.all(0);
  EdgeInsetsGeometry? margin = const EdgeInsets.all(0);
  TextInputType? inputType = TextInputType.text;
  List<TextInputFormatter>? inputFormatter;

  @override
  State<BasicTextField> createState() => _BasicTextFieldState();
}

class _BasicTextFieldState extends State<BasicTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      margin: widget.margin,
      child: TextField(
        onChanged: (value) {
          widget.updateController(value);
        },
        onSubmitted: (value) {
          widget.updateController(value);
          widget.onSubmit();
        },
        textInputAction: TextInputAction.done,
        inputFormatters: widget.inputFormatter,
        keyboardType: widget.inputType,
        style: widget.style,
        decoration: InputDecoration(
            labelStyle: widget.style,
            labelText: widget.title,
            hintText: widget.placeholder),
      ),
    );
  }
}
