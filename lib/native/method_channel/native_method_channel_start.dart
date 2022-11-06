import 'package:flutter/material.dart';

class NativeMethodChannelStart extends StatefulWidget {
  const NativeMethodChannelStart({super.key});

  @override
  State<NativeMethodChannelStart> createState() =>
      _NativeMethodChannelStartState();
}

class _NativeMethodChannelStartState extends State<NativeMethodChannelStart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("METHOD CHANNEL FOR NATIVE CODE"),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const <Widget>[Text('from Android:'), Text('from iOS')],
            ),
          ),
        ),
      ),
    );
  }
}
