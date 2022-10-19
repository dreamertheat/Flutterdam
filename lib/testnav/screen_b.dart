import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/testnav/screen_a.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});
  static const routeName = '/screenB';
  @override
  Widget build(BuildContext context) {
    int someNum = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Text("SCREEN: B"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(ScreenA.routeName, arguments: 2);
              },
              child: const Text("go to screen A")),
          Text("data from previous screen: $someNum")
        ]),
      ),
    );
  }
}
