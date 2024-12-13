import 'package:client/blocs/wifi/bloc/wifi_bloc.dart';
import 'package:client/blocs/wifi/bloc/wifi_state.dart';
import 'package:client/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client/repository/go_router.dart'; // Ensure GoRouter config is imported correctly
import './repository/no_internet.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WifiBloc(),
      child: BlocBuilder<WifiBloc, WifiState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: (state is Connected) ? routercon : nointernet, // Ensure routercon is defined elsewhere in your code
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
