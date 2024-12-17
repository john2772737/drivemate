import 'package:client/components/CarProperty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:client/components/CustomAppBar.dart';
import 'package:client/components/customEndDrawer.dart';

class PropertiesPage extends StatelessWidget {
  const PropertiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final List<Map<String, String>> carProperty = [
      {'name': 'Toyota Corolla', 'type': 'Sedan', 'model': '2024', 'fuel': 'Gasoline', 'seat': '5'},
      // Add more car properties here
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(showBackButton: false, showSearch: true),
      drawer: CustomEndDrawer(
        isLoggedIn: true,
        menuItems: [
          {'icon': Icons.home, 'title': 'Home'},
          {'icon': Icons.settings, 'title': 'Settings'},
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              CarProperty(carProperty: carProperty),
              SizedBox(
                width: screenWidth * 0.95,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), // Reduce the border radius
                    ), // Set button background color to black
                  ),
                  child: Text(
                    'Rent this car',
                    style: TextStyle(
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
