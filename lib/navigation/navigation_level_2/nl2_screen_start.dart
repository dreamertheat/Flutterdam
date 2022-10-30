// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation/navigation_level_1/nl1_screen_start.dart';

import 'nl2_screen_a.dart';
import 'nl2_screen_b.dart';

class NL2ScreenStart extends StatelessWidget {
  NL2ScreenStart({super.key});
  static const routeName = '/nl2';
  final RouteObserver<ModalRoute> routeObserver = RouteObserver();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [routeObserver],
      routes: {
        NL2ScreenA.routeName: (context) => const NL2ScreenA(),
        NL2ScreenB.routeName: (context) => const NL2ScreenB(),
      },
      home: const NL2ScreenA(),
    );
  }
}

class NL2ScreenDefault extends StatefulWidget {
  const NL2ScreenDefault({super.key});

  @override
  State<NL2ScreenDefault> createState() => _NL2ScreenDefaultState();
}

class _NL2ScreenDefaultState extends State<NL2ScreenDefault> with RouteAware {
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
    print("screen start didpop");
    super.didPop();
  }

  @override
  void didPopNext() {
    print("screen start didPopNext");
    super.didPopNext();
  }

  @override
  void didPush() {
    print('screen start didPush'); //init screen
    super.didPush();
  }

  @override
  void didPushNext() {
    print('screen start didPushNext');
    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                const Text("THIS IS INIT SCREEN"),
                const Padding(padding: EdgeInsets.all(10)),
                TextButton(
                  child: const Text("Go to screen A"),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NL2ScreenA(),
                    ));
                  },
                ),
                TextButton(
                  child: const Text("Go to screen B"),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NL2ScreenB(),
                    ));
                  },
                ),
              ]))),
    );
  }
}
