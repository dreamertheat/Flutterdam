
// class RouteAwareWidget extends StatefulWidget {
//   const RouteAwareWidget(
//       {super.key,
//       required this.routeObserver,
//       required this.child,
//       required this.name});

//   final RouteObserver<PageRoute> routeObserver;
//   final Widget child;
//   final String name;

//   @override
//   State<RouteAwareWidget> createState() => _RouteAwareWidgetState();
// }

// class _RouteAwareWidgetState extends State<RouteAwareWidget> with RouteAware {
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     routeObserver.subscribe(this, ModalRoute.of(context));
//   }

//   @override
//   void dispose() {
//     routeObserver.unsubscribe(this);
//     super.dispose();
//   }

//   @override
//   void didPush() {
//     super.didPush();
//     print('didPush ${widget.name}');
//   }

//   @override
//   void didPopNext() {
//     super.didPopNext();
//     print('didPopNext ${widget.name}');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return widget.child;
//   }
// }
