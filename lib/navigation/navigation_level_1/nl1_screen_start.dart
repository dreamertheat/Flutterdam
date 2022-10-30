import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation/navigation_level_1/nl1_screen_a.dart';

import 'nl1_screen_b.dart';

class NL1ScreenStart extends StatefulWidget {
  const NL1ScreenStart({super.key});
  static const routeName = '/screenb';

  @override
  State<NL1ScreenStart> createState() => _NL1ScreenStartState();
}

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class _NL1ScreenStartState extends State<NL1ScreenStart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [routeObserver],
      routes: {
        NL1ScreenA.routeName: (context) => const NL1ScreenA(),
        NL1ScreenB.routeName: (context) => const NL1ScreenB(),
      },
      home: const DefaultContext(),
    );
  }
}

//Subwidget is needed because material app level context cannot access navigator
class DefaultContext extends StatelessWidget {
  const DefaultContext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Text("SCREEN: MAIN"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(NL1ScreenA.routeName, arguments: 3);
              },
              child: const Text("go to screen A"))
        ]),
      ),
    );
  }
}
