import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'connectivity_event.dart';
part 'connectivity_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  Connectivity connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> streamSubscription;
  ConnectivityBloc() : super(ConnectivityInitial(text: 'Checking')) {
    on<ConnectedEvent>((event, emit) {
      emit.call(ConnectedState(ConnectivityResult: event.connectivityResult));
    });
    on<DisconnectedEvent>((event, emit) {
      emit.call(DisconnectedState());
    });
    connectivity.checkConnectivity().then((result) {
      if (result == ConnectivityResult.none) {
        add(DisconnectedEvent());
      } else {
        add(ConnectedEvent(
          connectivityResult: result,
        ));
      }
    });
    streamSubscription = connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.none) {
        add(DisconnectedEvent());
      } else {
        add(ConnectedEvent(
          connectivityResult: result,
        ));
      }
    });
  }
}
