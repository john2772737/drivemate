import 'package:client/blocs/wifi/bloc/wifi_bloc.dart';
import 'package:client/blocs/wifi/bloc/wifi_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client/repository/go_router.dart'; // Ensure GoRouter config is imported correctly
import 'package:go_router/go_router.dart'; // Ensure this import is correct for GoRouter
import 'package:fluttertoast/fluttertoast.dart'; // Import fluttertoast package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WifiBloc(),
      child: BlocListener<WifiBloc, WifiState>(
        listener: (context, state) {
          if (state is Disconnected) {
            Fluttertoast.showToast(
              msg: "Disconnected from WiFi",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
            );
          } else if (state is Connected) {
            Fluttertoast.showToast(
              msg: "Connected to WiFi",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
            );
          }
        },
        child: MaterialApp.router(
          routerConfig: routercon, // Ensure routercon is defined elsewhere in your code
        ),
      ),
    );
  }
}
