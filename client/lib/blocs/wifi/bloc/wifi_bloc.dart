import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'wifi_event.dart';
import 'wifi_state.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class WifiBloc extends Bloc<WifiEvent, WifiState> {
  final Connectivity connectivity = Connectivity();
  late final StreamSubscription<ConnectivityResult> _connectivitySubscription;

  WifiBloc() : super(Initial()) {
    // Subscribe to connectivity changes
    _connectivitySubscription = connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      print('Connectivity changed: $result');
      add(WifiEvent.scan(result));
    });

    on<Scan>(_onScanEvent);
  }

  void _onScanEvent(Scan event, Emitter<WifiState> emit) {
    final result = event.result;

    if (result == ConnectivityResult.wifi) {
      emit(Connected());
    } else {
      emit(Disconnected());
    }
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }
}
