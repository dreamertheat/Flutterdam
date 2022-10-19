import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/testnav/route_aware_widget.dart';
import 'package:flutter_complete_guide/testnav/screen_a.dart';

class ScreenDefault extends StatefulWidget {
  const ScreenDefault({super.key});
  static const routeName = '/screenb';

  @override
  State<ScreenDefault> createState() => _ScreenDefaultState();
}

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class _ScreenDefaultState extends State<ScreenDefault>  {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [routeObserver],
      routes: const {
        'screen_a': (context) => RouteAwareWidget(routeObserver: routeObserver,'screen2',ch)
      },
      home: Scaffold(
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
      ),
    );
  }
}
