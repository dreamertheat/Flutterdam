import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeMethodChannelStart extends StatefulWidget {
  const NativeMethodChannelStart({super.key});

  @override
  State<NativeMethodChannelStart> createState() =>
      _NativeMethodChannelStartState();
}

class _NativeMethodChannelStartState extends State<NativeMethodChannelStart> {
  final platform = const MethodChannel('justSomeMethodChannelD');
  String batteryLevel = 'error';
  Future getBatteryLevel() async {
    final arguments = {'name': 'something'};
    final String newBatteryLevel =
        await platform.invokeMethod('getBatteryLevel', arguments);
    setState(() {
      batteryLevel = newBatteryLevel;
    });
  }

  @override
  void initState() {
    super.initState();
    getBatteryLevel();
  }

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
              children: <Widget>[
                const Text('from Android:'),
                Text('from iOS $batteryLevel')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
