import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:client/blocs/wifi/bloc/wifi_bloc.dart';
import 'package:client/blocs/wifi/bloc/wifi_state.dart';
import 'package:client/pages/splashScreen.dart';
import 'package:client/pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WifiBloc(),
      child: MaterialApp.router(
        routerConfig: _router,
      ),
    );
  }
}

// Define your GoRouter configuration
final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/splash',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
  ],
  // Use the redirect feature to navigate based on Wi-Fi connection status
  redirect: (context, state) {
    final wifiState = BlocProvider.of<WifiBloc>(context).state;

    if (wifiState is Disconnected) {
      return '/splash'; // Redirect to splash if disconnected
    } else if (wifiState is Connected) {
      return '/login'; // Redirect to login if connected
    }

    return null; // Default behavior if no redirection is needed
  },
);

