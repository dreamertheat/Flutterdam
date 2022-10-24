// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation_level_1/nl1_screen_start.dart';

import 'nl2_screen_a.dart';

class NL2ScreenStart extends StatelessWidget {
  NL2ScreenStart({super.key});
  static const routeName = '/nl2';
  final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [routeObserver],
      routes: {NL2ScreenA.routeName: (context) => const NL2ScreenA()},
      home: const NL2ScreenDefault(),
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
    print("pop triggered");
    super.didPop();
  }

  @override
  void didPopNext() {
    print("init is now visible after popping");
    super.didPopNext();
  }

  @override
  void didPush() {
    print('push from init');
    super.didPush();
  }

  @override
  void didPushNext() {
    print('push next from init');
    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                child: const Text("Go to next screen"),
                onPressed: () {
                  Navigator.of(context).pushNamed(NL2ScreenA.routeName);
                },
              ))),
    );
  }
}
