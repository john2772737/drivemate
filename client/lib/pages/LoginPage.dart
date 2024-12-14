import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../repository/auth.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Import the toast package

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final AuthService _authService = AuthService();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Text(
                  "Sign In",
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/dodge_signin.png',
                height: 250,
              ),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF282931),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 370,
                  width: 300,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          'Step unto the gas!',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            const SizedBox(height: 15),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xFFF4F6FF),
                                border: const OutlineInputBorder(),
                                hintText: 'Username',
                                hintStyle: const TextStyle(fontSize: 12),
                              ),
                            ),
                            const SizedBox(height: 15),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                filled: true,
                                fillColor: const Color(0xFFF4F6FF),
                                border: const OutlineInputBorder(),
                                hintStyle: const TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add Forgot Password Logic
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Add Explore button logic
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                              ),
                              child: const Text("Explore!"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Add "Let's Go!" logic
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 20),
                              ),
                              child: Row(
                                children: [
                                  const Text("Let's Go!",
                                      style: TextStyle(color: Colors.black)),
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    'assets/images/customized_arrow.png',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const DividerSection(),
                      ElevatedButton(
                        onPressed: () async {
                          final user = await _authService.signInWithGoogle();
                          if (user != null) {
                            print("Signed in as: ${user.displayName}");
                                  Fluttertoast.showToast(
                              msg: "Google Sign-In Succesfully.",
                              toastLength: Toast.LENGTH_LONG,  // Test with LONG
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.green,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                            context.go('/home'); // Navigate to the home screen
                          } else {
                            // Show Toast message instead of SnackBar
                            Fluttertoast.showToast(
                              msg: "Google Sign-In failed.",
                              toastLength: Toast.LENGTH_LONG,  // Test with LONG
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF282931)),
                          elevation: MaterialStateProperty.all(0),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.zero),
                        ),
                        child: Image.asset(
                          'assets/images/google_icon.png',
                          width: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DividerSection extends StatelessWidget {
  const DividerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(color: Colors.white, thickness: 1),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            "or continue with",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Expanded(
          child: Divider(color: Colors.white, thickness: 1),
        ),
      ],
    );
  }
}
