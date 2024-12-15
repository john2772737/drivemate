import 'package:flutter/material.dart';

class Car_Card extends StatelessWidget {
  final List<Map<String, String>> cars;

  const Car_Card({
    super.key,
    required this.cars,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: screenHeight * .9,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: cars.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
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
                                cars[index]["name"]!,
                                style: const TextStyle(
                                  fontFamily: "nasalization",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(
                                cars[index]["price"]!,
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
                              padding: const EdgeInsets.only(left: 17.0), // Left indentation
                              child: Text(
                                cars[index]["detail"]!,
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
                              cars[index]["day"] ?? "Not available", // Default value if "day" is null
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
                          child: Image.asset(
                            cars[index]["image"]!,
                            width: screenWidth * 0.7, 
                            height: screenHeight * 0.16,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
