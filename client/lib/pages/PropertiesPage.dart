import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
import '../blocs/cars/car_model.dart';
import 'package:client/components/CustomAppBar.dart';

class CarProperty extends StatelessWidget {
  final Car car; // Now the page will take a Car object

  const CarProperty({
    super.key,
    required this.car, // Expecting the Car object directly
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of images (front, back, and side)
    final carImages = [
      car.frontImage,
      car.backImage,
      car.sideImage,
    ];

    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Back button icon
          onPressed: () {
          GoRouter.of(context).pop();// Pop the current screen from the stack
          },
        ),
        title: Text(car.make ?? 'Car'), // Display the car name as the title
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Carousel Slider for images
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              enlargeCenterPage: true,
              autoPlay: true,
            ),
            items: carImages
                .where((image) => image != null) // Filter out null values
                .map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.network(
                    imagePath!, // Using Image.network for the URL
                    width: screenWidth,
                    height: 200,
                    fit: BoxFit.cover,
                  );
                },
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: screenWidth * 1,
              height: screenHeight * 0.07,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 15),
                    child: Text(
                      car.make ?? 'No Car Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "nasalization",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, right: 15),
                    child: Text(
                      car.price.toString() ?? 'No Price Set',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "nasalization",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10), // Space between widgets
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: screenHeight * 0.31,
              width: screenWidth * 1,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      "Properties",
                      style: TextStyle(
                        fontFamily: "nasalization",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Row(
                      children: [
                        Text("Make: ", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Nasalization")),
                        Text(car.make ?? 'No brand name', style: TextStyle(fontFamily: "Nasalization")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Row(
                      children: [
                        Text("Model: ", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Nasalization")),
                        Text(car.model ?? 'No model included', style: TextStyle(fontFamily: "Nasalization")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Row(
                      children: [
                        Text("Category: ", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Nasalization")),
                        Text(car.category ?? 'No category included', style: TextStyle(fontFamily: "Nasalization")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Row(
                      children: [
                        Text("Year: ", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Nasalization")),
                        Text(car.year?.toString() ?? 'No year included', style: TextStyle(fontFamily: "Nasalization")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Row(
                      children: [
                        Text("Fuel: ", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Nasalization")),
                        Text(car.fuel ?? 'No fuel included', style: TextStyle(fontFamily: "Nasalization")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Row(
                      children: [
                        Text("Seats: ", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Nasalization")),
                        Text(car.seats?.toString() ?? 'No seats included', style: TextStyle(fontFamily: "Nasalization")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SizedBox(
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                       GoRouter.of(context).go('/billing', extra: car);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Rent this Car",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "Nasalization",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
