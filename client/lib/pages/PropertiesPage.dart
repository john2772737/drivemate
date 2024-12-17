import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../blocs/cars/car_model.dart';

class CarProperty extends StatelessWidget {
  final Car car;  // Now the page will take a Car object

  const CarProperty({
    super.key,
    required this.car,  // Expecting the Car object directly
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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
      child: Column(
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
          Container(
            width: screenWidth * 1,
            height: screenHeight * 0.09,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 6, bottom: 5),
                  child: Text(
                    car.price.toString() ?? 'No Price Set',
                    style: TextStyle(
                      fontFamily: "nasalization",
                      color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),  // Space between properties
          Container(
            height: screenHeight * 0.3,
            width: screenWidth * 1,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Properties",
                    style: TextStyle(
                      fontFamily: "nasalization",
                      fontWeight: FontWeight.bold, 
                      fontSize: 20),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Text(car.make ?? 'No brand name'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Text(car.model ?? 'No model included'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Text(car.category ?? 'No category included'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Text(car.year?.toString() ?? 'No year included'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Text(car.fuel ?? 'No fuel included'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Text(car.seats?.toString() ?? 'No seats included'),
                ),
                // Displaying the car ID
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Text('Car ID: ${car.id}', style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
