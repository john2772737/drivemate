import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'wifi_event.dart';
import 'wifi_state.dart';

import 'package:connectivity_plus/connectivity_plus.dart';

class WifiBloc extends Bloc<WifiEvent, WifiState> {
  final Connectivity connectivity = Connectivity();
  late final StreamSubscription<ConnectivityResult> _connectivitySubscription;

  WifiBloc() : super(Initial()) {
    // Check the initial connectivity status
    _initializeConnectivity();
   
    // Subscribe to connectivity changes
    _connectivitySubscription = connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      print('Connectivity changed: $result');
      add(WifiEvent.scan(result));
    });

    on<Scan>(_onScanEvent);
  }

  /// Handle connectivity scan events
  void _onScanEvent(Scan event, Emitter<WifiState> emit) {
    final result = event.result;

    if (result == ConnectivityResult.wifi || result == ConnectivityResult.mobile) {
      emit(Connected());
    } else {
      emit(Disconnected());
      
    }

    // Print the current state after it changes
    print('Current state: ${state.runtimeType}');
  }

  /// Initialize connectivity and emit the initial state
  Future<void> _initializeConnectivity() async {
    try {
      final ConnectivityResult result = await connectivity.checkConnectivity();
      print('Initial connectivity result: $result');

      // Emit the initial state based on the connectivity result
      if (result == ConnectivityResult.wifi) {
        emit(Connected());
      } else {
        emit(Disconnected());
      }
    } catch (e) {
      print('Failed to get connectivity status: $e');
      emit(Disconnected()); // Default to Disconnected in case of error
    }
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }
}
