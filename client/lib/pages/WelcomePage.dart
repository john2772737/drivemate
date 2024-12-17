import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:go_router/go_router.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  void showSnack(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 1),
      ),
    );
  }
// PAPUNTA LOGIN FUNCTION ALA PA

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/WELCOME_PAGE.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // "Rent & Ride" Title
            Transform.translate(
              offset: Offset(0, -10), 
              child: Container(
                padding: const EdgeInsets.only(top: 150),
                child: Text(
                  'Rent & Ride',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            // Subtitle
            Transform.translate(
              offset: Offset(0, 0), 
              child: Container(
                padding: const EdgeInsets.only(bottom: 80),
                child: Text(
                  'The road is yours take the wheel today!',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            // SwipeButton
            Container(
              padding: const EdgeInsets.only(top: 400),
              child: SwipeButton(
                activeTrackColor: const Color.fromARGB(255, 255, 255, 255),
                activeThumbColor: const Color.fromARGB(255, 46, 46, 46),
                borderRadius: BorderRadius.circular(8),
                height: 50,
                width: screenWidth * 0.5,
                child: const Text(
                  "Let's Go!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onSwipe: () {
                   GoRouter.of(context).go('/login');
                  
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
