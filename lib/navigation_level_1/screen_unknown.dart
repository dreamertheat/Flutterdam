import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation_level_1/screen_a.dart';

class ScreenUnknown extends StatelessWidget {
  const ScreenUnknown({super.key});
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
                    .pushNamed(ScreenA.routeName, arguments: 3);
              },
              child: Text("go to screen A")),
          const Text("FETCHED BY OnGenerateRoute"),
        ]),
      ),
    );
  }
}
