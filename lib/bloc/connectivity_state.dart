part of 'connectivity_bloc.dart';

@immutable
abstract class ConnectivityState {}

class ConnectivityInitial extends ConnectivityState {
  final String text;
  ConnectivityInitial({required this.text});
}

class ConnectedState extends ConnectivityState {
  final ConnectivityResult;

  ConnectedState({required this.ConnectivityResult});
}

class DisconnectedState extends ConnectivityState {}
