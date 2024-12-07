import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(title: const Text('Login Page')), 
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 120),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Transform.translate(
              offset: Offset(screenWidth*0.02, 0),
              child: Image.asset(
                'assets/images/dodge_signin.png',
                height: 250,
              ),
            ),
            SizedBox(height: 10),
            Transform.translate(
              offset: Offset(0, -110),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF282931),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 370,
                  width: 300,
                  child: Column(
                    children: [
                      // Step unto the gas 
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Step unto the gas!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ),
                      // Text Field
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: SizedBox(
                                width: 230,
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF4F6FF),
                                    border: OutlineInputBorder(),
                                    hintText: 'Username',
                                    hintStyle: TextStyle(fontSize: 12)
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 230,
                              height: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  alignLabelWithHint: true,
                                  filled: true,
                                  fillColor: Color(0xFFF4F6FF),
                                  border: OutlineInputBorder(),
                                  hintStyle: TextStyle(fontSize: 12)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(75, -10),
                        child: TextButton(
                          onPressed: (){}, 
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                            ),
                          )
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, -20),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: SizedBox(
                                width: 130,
                                child: ElevatedButton(
                                  onPressed: () {}, 
                                  child: Text(
                                    "Explore!", 
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(Color(0xFF000000)), 
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10), // Add space between the buttons
                            ElevatedButton(
                              onPressed: () {}, 
                              child: Row(
                                children: [
                                  Text(
                                    "Let's Go!",
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10), // Space between text and image
                                    child: Image.asset(
                                      'assets/images/customized_arrow.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 18, right: 5),
                            child: SizedBox(
                              width: screenWidth*0.2,
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                              child: Text(
                              "or continue with",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: SizedBox(
                              width: screenWidth*0.2,
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: SizedBox(
                          width: 65,
                          height: 65,
                          child: ElevatedButton(
                            onPressed: (){}, 
                            child: Image.asset(
                              'assets/images/google_icon.png',
                            ),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Color(0xFF282931)),
                              elevation: WidgetStateProperty.all(0),
                              padding: WidgetStateProperty.all(EdgeInsets.zero)
                            ),
                          ),
                        )
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}