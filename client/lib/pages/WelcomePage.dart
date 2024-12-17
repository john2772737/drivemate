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

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // "Rent & Ride" Title
            Column(
              children: [
                SizedBox(height: screenHeight * 0.15), 
                Text(
                  'Rent & Ride',
                  style: const TextStyle(
                    fontFamily: "goodtimes",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  'The road is yours take the wheel today!',
                  style: const TextStyle(
                    fontFamily: "goodtimes",
                    fontSize: 24,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // SwipeButton
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.1),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10), 
                child: SwipeButton(
                  activeTrackColor: const Color.fromARGB(255, 255, 255, 255),
                  activeThumbColor: const Color.fromARGB(255, 46, 46, 46),
                  borderRadius: BorderRadius.circular(8),
                  height: 50,
                  width: screenWidth * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/customized_arrow.png',
                          height: 20, 
                        ),
                      ),
                      const SizedBox(width: 5), 
                      const Text(
                        "Let's Go!",
                        style: TextStyle(
                          fontFamily: "goodtimes",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  onSwipe: () {
                    GoRouter.of(context).go('/login');
                  },
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
