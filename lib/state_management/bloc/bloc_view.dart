import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_guide/state_management/bloc/blocs/bloc_counter_bloc.dart';
import 'package:flutter_complete_guide/state_management/bloc/blocs/bloc_counter_state.dart';

import 'blocs/bloc_counter_event.dart';
import 'blocs/bloc_master_state.dart';

class BlocView extends StatefulWidget {
  const BlocView({super.key});

  @override
  State<BlocView> createState() => _BlocViewState();
}

class _BlocViewState extends State<BlocView> {
  late String _counter;
  late BlocCounterBloc bloc;
  String? currentCounter;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<BlocCounterBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLOC VIEW DEMO'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: body(),
        ),
      ),
    );
  }

  Widget body() {
    return MultiBlocListener(
      listeners: <BlocListener<dynamic, dynamic>>[
        BlocListener<BlocCounterBloc, BlocCounterState>(
          listener: (BuildContext context, BlocCounterState state) {
            if (state is SetCounterSuccessState) {
              if (kDebugMode) {
                print('counter is ${state.successMessage}');
              }
              currentCounter = state.successMessage;
            }

            if (state is SetCounterFailState) {
              if (kDebugMode) {
                print('error message is ${state.failMessage}');
                currentCounter = state.failMessage;
              }
            }
          },
        ),
      ],
      child: BlocBuilder<BlocCounterBloc, BlocCounterState>(
        builder: (BuildContext context, BlocCounterState state) {
          return Column(
            children: <Widget>[
              const Text('ENTER COUNTER:'),
              TextField(
                onChanged: (value) {
                  _counter = value;
                },
                onSubmitted: (value) {
                  onSubmit();
                },
                decoration:
                    const InputDecoration(hintText: "Enter counter value here"),
              ),
              const Padding(padding: EdgeInsets.all(8)),
              (state is SetCounterSuccessState)
                  ? Text('counter value: $currentCounter')
                  : const Text('error or no value yet!')
            ],
          );
        },
      ),
    );
  }

  void onSubmit() {
    bloc.add(SetCounterValueEvent(_counter));
  }
}
