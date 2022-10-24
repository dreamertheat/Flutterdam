import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation_level_1/nl1_screen_a.dart';

class NL1ScreenUnknown extends StatelessWidget {
  const NL1ScreenUnknown({super.key});
  static const routeName = '/screenb';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Text("SCREEN: UNKNOWN"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(NL1ScreenA.routeName, arguments: 3);
              },
              child: const Text("go to screen A")),
          const Text("FETCHED BY OnGenerateRoute"),
        ]),
      ),
    );
  }
}
