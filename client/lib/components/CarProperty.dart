import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarProperty extends StatelessWidget {
  final List<Map<String, String>> carProperty;

  const CarProperty({
    super.key,
    required this.carProperty,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: carProperty.map((property) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
          child: Column(
            children: [
              // Carousel Slider for images
              CarouselSlider(
                options: CarouselOptions(
                  height: 200, // Adjust the height as needed
                  enlargeCenterPage: true,
                  autoPlay: true, // Enable auto play if needed
                ),
                items: (property['images']?.split(',') ?? ['assets/images/image.png']).map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.asset(
                        imagePath,
                        width: screenWidth, // Set the width of the image
                        height: 200, // Adjust the height as needed
                        fit: BoxFit.cover, // Adjust image fit
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
                        property['description'] ?? 'No Description', // Safely access 'description'
                        style: const TextStyle(
                          fontFamily: "nasalization",
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 100, bottom: 5),
                      child: Text(
                        property['price'] ?? 'No Price Set', // Safely access 'price'
                        style: TextStyle(
                          fontFamily: "nasalization",
                          color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Space between properties
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
                      child: Text(property['brand'] ?? 'No brand name'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Text(property['model'] ?? 'No model included'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Text(property['category'] ?? 'No category included'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Text(property['year'] ?? 'No year included'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Text(property['fuel'] ?? 'No fuel included'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Text(property['seat'] ?? 'No seats included'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
