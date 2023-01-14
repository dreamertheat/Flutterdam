import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_guide/state_management/bloc/blocs/bloc_counter_bloc.dart';
import 'package:flutter_complete_guide/state_management/bloc/repository/bloc_counter_service.dart';

class BlocStart extends StatefulWidget {
  const BlocStart({super.key});

  @override
  State<BlocStart> createState() => _BlocStartState();
}

class _BlocStartState extends State<BlocStart> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<BlocCounterBloc>(
            create: (BuildContext context) =>
                BlocCounterBloc(BlocCounterService()),
          ),
        ],
        child: const MaterialApp(
          title: 'Bloc App',
        ));
  }
}
