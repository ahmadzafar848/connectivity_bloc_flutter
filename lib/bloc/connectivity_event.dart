part of 'connectivity_bloc.dart';

@immutable
abstract class ConnectivityEvent {}

class ConnectedEvent extends ConnectivityEvent {
  final ConnectivityResult connectivityResult;

  ConnectedEvent({required this.connectivityResult});
}

class DisconnectedEvent extends ConnectivityEvent {}
