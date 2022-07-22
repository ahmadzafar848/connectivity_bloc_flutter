import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity_with_bloc/bloc/connectivity_bloc.dart';
import 'package:flutter_connectivity_with_bloc/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ConnectivityBloc>(
        create: (context) => ConnectivityBloc(),
        child: Homepage(),
      ),
    );
  }
}
