import 'package:flutter/material.dart';
import '../blocs/cars/car_model.dart'; // Import the Car model
import 'package:go_router/go_router.dart';

class CarCard extends StatelessWidget {
  final Car car; // Single Car object

  const CarCard({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      child: GestureDetector(
        onTap: () {
          // Navigate to 'propertypage' and pass the car object
          GoRouter.of(context).push('/propertypage', extra: car);
        },
        child: Container(
          height: screenHeight * 0.25,
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.blueGrey, width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Car Make and Price
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Car Make
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        car.make ?? 'Unknown Car', // Handle null values
                        style: const TextStyle(
                          fontFamily: "nasalization",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Car Price
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        '₱${car.price ?? '0'}', // Handle null price
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8.0),

              // Car Model and Availability
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Car Model
                  Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Text(
                      car.model ?? 'No Model', // Handle null values
                      style: const TextStyle(
                        fontFamily: "montserrat",
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Availability Status
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      car.availabilityStatus ?? "Not available", // Handle null status
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),

              // Car Front Image (Centered)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: car.frontImage != null // Check for image existence
                      ? Image.network(
                          car.frontImage!,
                          width: screenWidth * 0.7,
                          height: screenHeight * 0.16,
                          fit: BoxFit.contain,
                        )
                      : const Icon( // Placeholder icon if no image
                          Icons.image_not_supported,
                          color: Colors.grey,
                          size: 50,
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
