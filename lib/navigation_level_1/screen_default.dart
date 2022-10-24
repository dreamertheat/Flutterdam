import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation_level_1/screen_a.dart';

import 'screen_b.dart';

class ScreenDefault extends StatefulWidget {
  const ScreenDefault({super.key});
  static const routeName = '/screenb';

  @override
  State<ScreenDefault> createState() => _ScreenDefaultState();
}

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class _ScreenDefaultState extends State<ScreenDefault> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [routeObserver],
      routes: {
        ScreenA.routeName: (context) => const ScreenA(),
        ScreenB.routeName: (context) => const ScreenB(),
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
                    .pushNamed(ScreenA.routeName, arguments: 3);
              },
              child: const Text("go to screen A"))
        ]),
      ),
    );
  }
}
