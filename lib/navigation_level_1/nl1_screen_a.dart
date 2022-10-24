import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation_level_1/nl1_screen_b.dart';

class NL1ScreenA extends StatelessWidget {
  const NL1ScreenA({super.key});
  static const routeName = '/screenA';
  @override
  Widget build(BuildContext context) {
    int someNum = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Text("SCREEN: A"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(NL1ScreenB.routeName, arguments: 1);
              },
              child: const Text("go to screen B")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed('someString', arguments: 69);
              },
              child: const Text("go to unkown")),
          Text("data from previous screen: $someNum")
        ]),
      ),
    );
  }
}
