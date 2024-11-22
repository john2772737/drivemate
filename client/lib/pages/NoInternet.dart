import 'package:flutter/material.dart';

class NoInternetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Show the SnackBar when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('No Internet Connection'),
          duration: Duration(seconds: 3), // SnackBar duration
        ),
      );
    });

    return Scaffold(
      body: Center(child: Text('No Internet Connection')),
    );
  }
}
