import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation_level_1/nl1_screen_start.dart';

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
    print('pop screen A');
    super.didPop();
  }

  @override
  void didPopNext() {
    print('pop next screen A');
    super.didPop();
  }

  @override
  void didPush() {
    print('push from screen A');
    super.didPush();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(10),
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("GO BACK"),
        ),
      )),
    );
  }
}
