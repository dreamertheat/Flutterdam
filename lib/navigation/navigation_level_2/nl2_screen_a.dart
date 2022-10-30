// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation/navigation_level_1/nl1_screen_start.dart';
import 'package:flutter_complete_guide/navigation/navigation_level_2/nl2_screen_b.dart';

class NL2ScreenA extends StatefulWidget {
  const NL2ScreenA({super.key});

  static const routeName = 'NL2ScreenA';

  @override
  State<NL2ScreenA> createState() => _NL2ScreenAState();
}

class _NL2ScreenAState extends State<NL2ScreenA> with RouteAware {
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
    print('didPop screen A');
    super.didPop();
  }

  @override
  void didPopNext() {
    print('didPopNext screen A');
    super.didPopNext();
  }

  @override
  void didPush() {
    print('didPush screen A');
    super.didPush();
  }

  @override
  void didPushNext() {
    print('didPushNext screen A');
    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page A'),
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text("THIS IS SCREEN A"),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("GO BACK"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(NL2ScreenB.routeName);
              },
              child: const Text("GO TO B"),
            ),
          ],
        ),
      )),
    );
  }
}
