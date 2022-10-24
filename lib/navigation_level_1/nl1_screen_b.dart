import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation_level_1/nl1_screen_a.dart';

class NL1ScreenB extends StatelessWidget {
  const NL1ScreenB({super.key});
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
                    .pushReplacementNamed(NL1ScreenA.routeName, arguments: 2);
              },
              child: const Text("go to screen A")),
          Text("data from previous screen: $someNum")
        ]),
      ),
    );
  }
}
