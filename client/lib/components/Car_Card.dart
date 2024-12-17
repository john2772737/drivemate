import 'package:flutter/material.dart';
import '../blocs/cars/car_model.dart'; // Make sure you import the Car model
import 'package:go_router/go_router.dart';

class CarCard extends StatelessWidget {
  final Car car; // Update to take a single Car object

  const CarCard({
    Key? key,
    required this.car, // Expect a single car
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),


      child: GestureDetector(
        onTap: () {
          // Navigate to the 'propertypage' route and pass the car object
          GoRouter.of(context).go('/propertypage', extra: car);
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        car.make, // Use car.make (from Car model)
                        style: const TextStyle(
                          fontFamily: "nasalization",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      '₱${car.price}', // Use car.price (formatted price)
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
            Transform.translate(
              offset: Offset(0, -screenHeight * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Text(
                      car.model, // Use car.model (from Car model)
                      style: const TextStyle(
                        fontFamily: "montserrat",
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      car.availabilityStatus ?? "Not available", // Use car.availabilityStatus
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 1.0),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: car.frontImage != null // Check if the front image exists
                    ? Image.network(
                        car.frontImage!, // Use car.frontImage (image URL)
                        width: screenWidth * 0.7,
                        height: screenHeight * 0.16,
                        fit: BoxFit.contain,
                      )
                    : Container(), // Show a placeholder or empty if no image is available
              ),
            ),
          ],
        ),
      ),
    );
  }
}
