import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity_with_bloc/bloc/connectivity_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connectivity'),
      ),
      body: BlocBuilder<ConnectivityBloc, ConnectivityState>(
        builder: (context, state) {
          if (state is ConnectedState) {
            return Container(
              height: 200,
              width: 200,
              color: Colors.green,
            );
          } else {
            return Container(
              height: 200,
              width: 200,
              color: Colors.red,
            );
          }
        },
      ),
    );
  }
}
