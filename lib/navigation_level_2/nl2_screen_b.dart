// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation_level_1/nl1_screen_start.dart';

import 'nl2_screen_a.dart';

class NL2ScreenB extends StatefulWidget {
  const NL2ScreenB({super.key});

  static const routeName = 'NL2ScreenB';

  @override
  State<NL2ScreenB> createState() => _NL2ScreenBState();
}

class _NL2ScreenBState extends State<NL2ScreenB> with RouteAware {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
    });

    super.initState();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPop() {
    print('didPop screen B');
    super.didPop();
  }

  @override
  void didPopNext() {
    print('didPopNext screen B');
    super.didPopNext();
  }

  @override
  void didPush() {
    print('didPush screen B');
    super.didPush();
  }

  @override
  void didPushNext() {
    print('didPushNext screen B');
    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text("THIS IS SCREEN B"),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("GO BACK"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(NL2ScreenA.routeName);
              },
              child: const Text("GO TO A"),
            ),
          ],
        ),
      )),
    );
  }
}
