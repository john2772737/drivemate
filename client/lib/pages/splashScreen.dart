import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/icons/loading.json', // Path to your Lottie animation
          width: screenWidth * 0.6, // Adjust width as needed
          height: 250, // Adjust height
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
