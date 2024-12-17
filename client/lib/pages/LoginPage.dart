import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../repository/auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../repository/user_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService _authService = AuthService();
    final UserService _userService = UserService();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center, // Center all elements horizontally
          children: [
            // Positioned "Sign In" Text at the Top
            Positioned(
              top: 80,
              left: 135,
              child: Text(
                "Sign In",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Nasalization"
                ),
              ),
            ),

            // Positioned Car Image
            Positioned(
              top: 120, // Adjust top position for alignment
              child: Image.asset(
                'assets/images/dodge_signin.png',
                height: 200,
                fit: BoxFit.contain,
              ),
            ),

            // Container Positioned to Align with Image
            Positioned(
              top: 250, // Adjust overlap with image
              child: Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color(0xFF282931),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 0),
                    const Text(
                      'Take the wheel!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Nasalization"
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Stack to overlay Google button on the handle image
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        // Handle Image
                        Image.asset(
                          'assets/images/handle.png',
                          height: 200,
                        ),
                        // Google Sign-In Button centered on the handle image
                        Positioned(
                          top: -3,
                          bottom: 10, // Adjust the vertical position of the button
                          child: ElevatedButton(
                            onPressed: () async {
                              final user = await _authService.signInWithGoogle();
                              if (user != null) {
                                print("Signed in as: ${user.displayName}");

                                Fluttertoast.showToast(
                                  msg: "Google Sign-In Successful.",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 16.0,
                                );
                                context.go('/home'); // Navigate to home screen
                              } else {
                                // Show Toast message for failed login
                                Fluttertoast.showToast(
                                  msg: "Google Sign-In failed.",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0,
                                );
                              }
                            },
                            style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.white),
                            elevation: WidgetStateProperty.all(0),
                            padding: WidgetStateProperty.all(
                              const EdgeInsets.all(0),
                            ),
                            shape: WidgetStateProperty.all(
                              const CircleBorder(),
                            ),
                            minimumSize: WidgetStateProperty.all(Size(30, 30)), // Set width and height here
                          ),

                            child: Image.asset(
                              'assets/images/googleblack.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // "Let's Go!" Button
                    ElevatedButton(
                      onPressed: () {
                        // Add "Let's Go!" logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 30,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Let's Go!",
                            style: TextStyle(
                              color: Color(0xFF282931),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/images/customized_arrow.png',
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
