import 'dart:math';  // For random number generation
import 'package:flutter/material.dart';
import 'package:client/brand_pages/brand_cars_data.dart';  // Import the brandCars data
import 'package:client/components/Car_Card.dart';  // Import the Car_Card component
import 'package:client/components/CustomAppBar.dart';  // Import the CustomAppBar

class AllCarsPage extends StatelessWidget {
  final String brandName;

  const AllCarsPage({super.key, required this.brandName});

  @override
  Widget build(BuildContext context) {
    // Get the list of cars for the given brand from brandCars data
    List<Map<String, String>>? cars = brandCars[brandName];

    // Generate a list of random cars if cars are available
    List<Map<String, String>> randomCars = _getRandomCars(cars);

    return Scaffold(
      appBar: CustomAppBar(showBackButton: true, showSearch: true), // Use CustomAppBar with back button, no search
      body: cars == null || cars.isEmpty
          ? Center(child: Text("No cars available for this brand"))
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // "Ready to be rent" text on the left
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Ready to be rent",
                      style: TextStyle(
                        fontFamily: "nasalization",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Display random cars
                  Expanded(
                    child: ListView.builder(
                      itemCount: randomCars.length,
                      itemBuilder: (context, index) {
                        // Pass each random car to Car_Card
                       
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  // Function to get a list of random cars from the provided list
  List<Map<String, String>> _getRandomCars(List<Map<String, String>>? cars) {
    if (cars == null || cars.isEmpty) {
      return [];
    }

    // Create a copy of the cars list to avoid modifying the original one
    var shuffledCars = List<Map<String, String>>.from(cars);

    // Shuffle the copied list
    var random = Random();
    shuffledCars.shuffle(random);

    // Return up to 10 random cars
    return shuffledCars.take(10).toList();  
  }
}
